# definition for class planet ----

planet <- new_class(
  name = "planet",
  properties = list(
    name = class_character,
    specialDay = class_Date, # use class_date for built-in validation
    # new_property offers more control
    distance_au = new_property(class = class_numeric,
                               default = 0),
    timeNow = new_property(
      class = class_POSIXct,
      getter = function(self) {
        # getter is updated at access
        Sys.time()
        },
      setter = function(self, value) {
        self@timeNow <- value
        self
        }
    )
  ),
  # validator checks for valid constructor values
  validator = function(self) {
    if (self@distance_au > 31) {
      "@distance_au is farther than Neptune"
    } else if (self@distance_au < .3) {
      "@distance_au is less than Mercury"
    }
  }
)

# create a generic method ----
changeDistance <- new_generic(name = "changeDistance",
                              dispatch_args = "aRandomName")

# create methods for different classes ----
method(changeDistance, planet) <- function(aRandomName) {
  aRandomName@distance_au <- aRandomName@distance_au * 2
  aRandomName
}