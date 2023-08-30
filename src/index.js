module.exports = {
  register({ strapi }) {
    const extensionService = strapi.plugin('graphql').service('extension');

    extensionService.use(({ nexus }) =>  ({
      resolversConfig: {
        'Mutation.deleteProject': {
          middlewares: [
            async (resolve, ...args) => {

              // deletando todos os projectUserRoles
              const projectUserRoles = await strapi.entityService.findMany('api::project-user-role.project-user-role', {
                filters: { project: {id: args[1].id} }
              });

              projectUserRoles.map((p) => {
                strapi.entityService.delete('api::project-user-role.project-user-role', p.id);
              })

              // deletando todos os boards
              const boards = await strapi.entityService.findMany('api::board.board', {
                filters: { project: {id: args[1].id} }
              });

              boards.map((b) => {
                strapi.entityService.delete('api::board.board', b.id);
              })

              // deletando todos os sprints
              const sprints = await strapi.entityService.findMany('api::sprint.sprint', {
                filters: { project: {id: args[1].id} }
              });

              sprints.map((s) => {
                strapi.entityService.delete('api::sprint.sprint', s.id);
              })

              return resolve(...args);
            }
          ]
        },
        'Mutation.createProject': {
          middlewares: [
            async (resolve, ...args) => {
              project = await resolve(...args);
              const usersAdmin = await strapi.entityService.findMany('plugin::users-permissions.user', {
                filters: { type: "admin" }
              });

              usersAdmin.map((u) => {
                strapi.entityService.create('api::project-user-role.project-user-role', {
                  data: {
                    user: u.id,
                    project: project.value.id,
                    role: "scrumMaster"
                  },
                });
              })

              console.log(usersAdmin)
              return project;
            }
          ]
        },
        'Mutation.updateBoard': {
          middlewares: [
            async (resolve, ...args) => {
              boardNew = await resolve(...args)

              if(boardNew.value.status == 'concluded'){
                boardNew.value.conclusionDate = new Date()
              }else{
                boardNew.value.conclusionDate = null
              }

              return boardNew;
            }
          ]
        },
        'Mutation.createBoard': {
          middlewares: [
            async (resolve, ...args) => {
              boardNew = await resolve(...args)

              if(boardNew.value.status == 'concluded'){
                boardNew.value.conclusionDate = new Date()
              }

              return boardNew;
            }
          ]
        },
      }
    }));
  }
}
