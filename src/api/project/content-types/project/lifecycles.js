module.exports = {
  async beforeDelete(event) {
    const { where, data } = event.params;
    const { id } = where;

    // deletando todos os projectUserRoles
    const projectUserRoles = await strapi.entityService.findMany('api::project-user-role.project-user-role', {
      filters: { project: {id: id} }
    });

    projectUserRoles.map(async (p) => {
      await strapi.entityService.delete('api::project-user-role.project-user-role', p.id);
    })

    // deletando todos os boards
    const boards = await strapi.entityService.findMany('api::board.board', {
      filters: { project: {id: id} }
    });

    boards.map(async (b) => {
      await strapi.entityService.delete('api::board.board', b.id);
    })

    // deletando todos os sprints
    const sprints = await strapi.entityService.findMany('api::sprint.sprint', {
      filters: { project: {id: id} }
    });

    sprints.map(async (s) => {
      await strapi.entityService.delete('api::sprint.sprint', s.id);
    })

  },
  async afterCreate(event) {
    const { id } = event.result;

    const usersAdmin = await strapi.entityService.findMany('plugin::users-permissions.user', {
      filters: { type: "admin" }
    });

    usersAdmin.map(async (u) => {
      await strapi.entityService.create('api::project-user-role.project-user-role', {
        data: {
                user: u.id,
                project: id,
                role: "scrumMaster"
              },
      });
    })
  }
};