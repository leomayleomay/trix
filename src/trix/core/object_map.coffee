class Trix.ObjectMap
  constructor: (objects = []) ->
    @objects = {}
    for object in objects
      hash = JSON.stringify(object)
      @objects[hash] ?= object

  find: (object) ->
    hash = JSON.stringify(object)
    @objects[hash]
