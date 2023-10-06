module.exports = {
  async beforeDelete(event) {
    const { where, data } = event.params;
    const { id } = where;

    // deletando todos os activeSprints
    const activeSprints = await strapi.entityService.findMany('api::active-sprint.active-sprint', {
      filters: { sprint: {id: id} }
    });

    activeSprints.map(async (p) => {
      await strapi.entityService.delete('api::active-sprint.active-sprint', p.id);
    })

    // deletando todos os boards
    const boards = await strapi.entityService.findMany('api::board.board', {
      filters: { sprint: {id: id} }
    });

    boards.map(async (b) => {
      await strapi.entityService.delete('api::board.board', b.id);
    })
  }
};