module.exports = {
  async beforeCreate(event) {
    const { where, data } = event.params;
    if(data.status == 'concluded'){
      data.conclusionDate = new Date().toISOString()
    }else{
      data.conclusionDate = null
    }
  },
  async beforeUpdate(event) {
    const { where, data } = event.params;
    const { id } = where;

    const boardOld = await strapi.entityService.findOne('api::board.board', id)

    if(data.status == boardOld.status){
      return
    }

    if(data.status == 'concluded'){
      data.conclusionDate = new Date().toISOString()
    }else{
      data.conclusionDate = null
    }
    
  }
};