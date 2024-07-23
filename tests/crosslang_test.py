#empty lmao
import pytest
from crosslang.executor import Translator

def test_rust():
    code = """
    fn main() {
        println!("Hello, world!");
    }
    """
    output = Translator('rust', code)
    assert "Hello, world!" in output

def test_c():
    code = """
    #include <stdio.h>

    int main() {
        printf("Hello, World!\\n");
        return 0;
    }
    """
    output = Translator('c', code)
    assert "Hello, World!" in output

def test_java():
    code = """
    public class Main {
        public static void main(String[] args) {
            System.out.println("Hello, World!");
        }
    }
    """
    output = Translator('java', code)
    assert "Hello, World!" in output

def test_ruby():
    code = 'puts "Hello, World!"'
    output = Translator('ruby', code)
    assert "Hello, World!" in output

def test_lua():
    code = 'print("Hello, World!")'
    output = Translator('lua', code)
    assert "Hello, World!" in output

def test_go():
    code = """
    package main

    import "fmt"

    func main() {
        fmt.Println("Hello, World!")
    }
    """
    output = Translator('go', code)
    assert "Hello, World!" in output

def test_javascript():
    code = 'console.log("Hello, World!");'
    output = Translator('js', code)
    assert "Hello, World!" in output

def test_php():
    code = '<?php echo "Hello, World!"; ?>'
    output = Translator('php', code)
    assert "Hello, World!" in output

def test_perl():
    code = 'print "Hello, World!\\n";'
    output = Translator('perl', code)
    assert "Hello, World!" in output

def test_scala():
    code = """
    object Main extends App {
        println("Hello, World!")
    }
    """
    output = Translator('scala', code)
    assert "Hello, World!" in output

def test_shell():
    code = 'echo "Hello, World!"'
    output = Translator('shell', code)
    assert "Hello, World!" in output

def test_kotlin():
    code = """
    fun main() {
        println("Hello, World!")
    }
    """
    output = Translator('kotlin', code)
    assert "Hello, World!" in output

# Optional: Add a fixture to handle setup and teardown if needed.
@pytest.fixture
def setup_environment():
    # Perform any setup required before tests
    yield
    # Perform any teardown required after tests
