module.exports = {
  async beforeCreate(event) {
    const { data } = event.params
 
    const usersAdmin = await strapi.entityService.findMany('plugin::users-permissions.user', {
      filters: { type: "admin" }
    });

    const idsAdmin = usersAdmin.map((u) => u.id)

    if(!data.usersCanEdit.connect){
      data.usersCanEdit = data.usersCanEdit.concat(idsAdmin)
    }else{
      data.usersCanEdit.connect = data.usersCanEdit.connect.concat(idsAdmin)
      if(idsAdmin.length > 0){
        data.author = idsAdmin[0]
      }
    }

    const ctx = strapi.requestContext.get();
    const { user } = ctx.state;

    const entry = await strapi.entityService.create('api::story.story', {
      data: {
        author: user.username ? user.username : 'admin',
        date: new Date().toISOString() 
      },
    });

    data.stories = entry.id
  },
  async beforeUpdate(event) {

    const { where, data } = event.params
    const { id } = where;

    const ctx = strapi.requestContext.get();
    const { user } = ctx.state;

    const { stories, categories } = await strapi.entityService.findOne('api::knowledge.knowledge', id, {
      populate: '*',
    })
    
    // criando o story
    const entry = await strapi.entityService.create('api::story.story', {
      data: {
        author: user.username ? user.username : 'admin',
        date: new Date().toISOString() 
      },
    });
    
    // colocando o story
    data.stories = stories.concat([entry.id])


    // verificando as categorias
    let categoriesIdToVerify = []
    if(data.categories.disconnect){
      categoriesIdToVerify = data.categories.disconnect.map((c) => c.id)
    }else{
      const oldCategories = categories.map((c) => c.id)
      categoriesIdToVerify = oldCategories.filter(c => !data.categories.map((c) => parseInt(c)).includes(c))
    }
    
    categoriesIdToVerify.map(async (c) => {
      const { knowledges } = await strapi.entityService.findOne('api::category.category', c, {
        populate: '*',
      })

      knowledges.length == 1 && await strapi.entityService.delete('api::category.category', c);
    })

  },
  async beforeDelete(event) {
    const { where, data } = event.params;
    const { id } = where;

    // deletando todos os stories
    const { stories } = await strapi.entityService.findOne('api::knowledge.knowledge', id, {
      populate: '*',
    })

    stories.map(async (h) => {
      await strapi.entityService.delete('api::story.story', h.id);
    })

    // deletando todos as categorias que so estiverem nesse knowledge
    const categories = await strapi.entityService.findMany('api::category.category',{
      filters: { 
        knowledges: [id]
      },
      populate: '*',
    })

    categories.map(async (c) => {
      c.knowledges.length == 1 && await strapi.entityService.delete('api::category.category', c.id);
    })
  }
};