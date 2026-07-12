BUILD_DIR := ./build
EXEC := rage

$(BUILD_DIR)/$(EXEC): src/Rage.mad
	mkdir -p $(dir $@)
	echo "compiling! - 🤬"
	madlib compile -i src/Rage.mad -t llvm -o $@
	echo "built! - 🤬"

version.lock:
	madlib install

.PHONY: clean
clean:
	rm -r $(BUILD_DIR)
