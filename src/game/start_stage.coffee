class StartStage extends Stage
  constructor: (width, height, ctx) ->
    super(width, height, ctx)
    @controller = Controller.get()

  _init: () =>
    @title = "Double Vision"
    @entryText = "Hit ENTER to begin"

  _update: (step) =>
    if @controller.isPressed(Keys.ENTER)
      @state = STATE.finished

  _render: () ->
    @ctx.save()

    EFFECTS.stereoscopic(@title, '72px Georgia', @ctx, 60, 140)
    EFFECTS.stereoscopic(@entryText, '42px Georgia', @ctx, 100, 220)

    @ctx.restore()

