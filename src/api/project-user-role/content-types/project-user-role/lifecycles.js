module.exports = {
  async beforeDelete(event) {
    const { where, data } = event.params;
    const { id } = where;
    
    const projectUserRoleOld = await strapi.entityService.findOne('api::project-user-role.project-user-role', id, {
      populate: '*',
    })
    const user = await strapi.entityService.findOne('plugin::users-permissions.user', projectUserRoleOld.user.id, {
      populate: '*',
    })

    if(user.activeProject){
      user.activeProject.id == projectUserRoleOld.project.id && (
        await strapi.entityService.update('plugin::users-permissions.user', projectUserRoleOld.user.id, {
          data: {
            activeProject: null,
          },
        })

      )
    }  
  }
};