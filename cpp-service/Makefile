CXX = g++
CXXFLAGS = --coverage -g -I./src

.PHONY: all test coverage clean

# Build and run main (optional)
all:
	$(CXX) $(CXXFLAGS) src/math.cpp -o app
	./app

# Compile and run tests
test:
	$(CXX) $(CXXFLAGS) src/math.cpp tests/test.cpp -o test
	./test

# Generate coverage (HTML + XML for SonarCloud)
coverage:
	gcovr -r . --html --html-details --merge-mode-functions=merge-use-line-0 -o coverage.html
	gcovr -r . --xml --merge-mode-functions=merge-use-line-0 -o coverage.xml

# Clean generated files
clean:
	del /Q *.gcda *.gcno *.gcov test.exe app.exe coverage.html coverage.xml 2>nul || exit 0