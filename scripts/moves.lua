return function(mod)

  mod.content.moves:patch("BITE", {
    type = "DARK",
  })
  mod.content.move_effects:register("CRUNCH_SPECIAL_DOWN_EFFECT", {
    kind = "secondary",
    run = function(ctx)
      if ctx.target.substituteHP then return {} end
      if ctx.rng(0, 255) >= 52 then return {} end
      return ctx.changeStage(ctx.target, "special", -1, false)
    end,
  })

  mod.content.moves:register("CRUNCH", {
    id = "CRUNCH",
    name = "CRUNCH",
    type = "DARK",
    power = 80,
    accuracy = 100,
    pp = 15,
    effect = "CRUNCH_SPECIAL_DOWN_EFFECT",
    -- Crunch Uses Bite's sound and animation for now
    anim = {
      pitch = 0,
      sound = "Battle_1E",
      tempo = 128,
    },
  })

  mod.content.move_effects:register("METAL_CLAW_ATTACK_UP_EFFECT", {
    kind = "secondary",
    run = function(ctx)
      if ctx.rng(0, 255) >= 26 then return {} end
      return ctx.changeStage(ctx.user, "attack", 1, false)
    end,
  })

  mod.content.move_effects:register("STEEL_WING_DEFENSE_UP_EFFECT", {
    kind = "secondary",
    run = function(ctx)
      if ctx.rng(0, 255) >= 26 then return {} end
      return ctx.changeStage(ctx.user, "defense", 1, false)
    end,
  })

  mod.content.move_effects:register("IRON_TAIL_DEFENSE_DOWN_EFFECT", {
    kind = "secondary",
    run = function(ctx)
      if ctx.target.substituteHP then return {} end
      if ctx.rng(0, 255) >= 77 then return {} end
      return ctx.changeStage(ctx.target, "defense", -1, false)
    end,
  })

  mod.content.move_effects:register("METAL_SOUND_SPECIAL_DOWN_EFFECT", {
    kind = "primary",
    run = function(ctx)
      return ctx.changeStage(ctx.target, "special", -2, true)
    end,
  })

  mod.content.moves:register("METAL_CLAW", {
    id = "METAL_CLAW",
    name = "METAL CLAW",
    type = "STEEL",
    power = 50,
    accuracy = 95,
    pp = 35,
    effect = "METAL_CLAW_ATTACK_UP_EFFECT",
    anim = {
      pitch = 0,
      sound = "Damage",
      tempo = 128,
    },
  })

  mod.content.moves:register("STEEL_WING", {
    id = "STEEL_WING",
    name = "STEEL WING",
    type = "STEEL",
    power = 70,
    accuracy = 90,
    pp = 25,
    effect = "STEEL_WING_DEFENSE_UP_EFFECT",
    anim = {
      pitch = 16,
      sound = "Battle_12",
      tempo = 160,
    },
  })

  mod.content.moves:register("IRON_TAIL", {
    id = "IRON_TAIL",
    name = "IRON TAIL",
    type = "STEEL",
    power = 100,
    accuracy = 75,
    pp = 15,
    effect = "IRON_TAIL_DEFENSE_DOWN_EFFECT",
    anim = {
      pitch = 0,
      sound = "Battle_22",
      tempo = 128,
    },
  })

  mod.content.moves:register("METAL_SOUND", {
    id = "METAL_SOUND",
    name = "METAL SOUND",
    type = "STEEL",
    power = 0,
    accuracy = 85,
    pp = 40,
    effect = "METAL_SOUND_SPECIAL_DOWN_EFFECT",
    anim = {
      pitch = 0,
      sound = "Battle_31",
      tempo = 128,
    },
  })

  -- New moves will use known assets for now,


  mod.content.battle_anims:register("CRUNCH", {
    seq = {
      {
        delay = 8,
        sound = "BITE",
        subanim = 2,
        tileset = 0,
      },
    },
  })

  mod.content.battle_anims:register("METAL_CLAW", {
    seq = {
      {
        delay = 6,
        sound = "METAL_CLAW",
        subanim = 15,
        tileset = 0,
      },
    },
  })

  mod.content.battle_anims:register("STEEL_WING", {
    seq = {
      {
        delay = 6,
        sound = "STEEL_WING",
        subanim = 4,
        tileset = 1,
      },
    },
  })

  mod.content.battle_anims:register("IRON_TAIL", {
    seq = {
      {
        delay = 6,
        sound = "IRON_TAIL",
        subanim = 2,
        tileset = 0,
      },
    },
  })

  mod.content.battle_anims:register("METAL_SOUND", {
    seq = {
      {
        delay = 6,
        sound = "METAL_SOUND",
        subanim = 18,
        tileset = 1,
      },
    },
  })
end
