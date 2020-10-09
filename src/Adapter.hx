import js.html.InputElement;
using Extensions;

class IntAdapter  {
    private final input: InputElement;

    public function new(input:InputElement) {
        this.input = input;
    }

	public function get():Null<Int> {
        if (input.value.length == 0) {
            return null;
        }

        final value:Null<Int> = Std.parseInt(input.value);
        if (value != null) {
            return value;
        }

        throw 'could not parse ${input} as int';
    }

	public function set(val:Int):Void {
        input.placeholder = Std.string(val);
    }
}

class FloatAdapter  {
    private final input: InputElement;

    public function new(input:InputElement) {
        this.input = input;
    }

	public function get():Null<Float> {
        if (input.value.length == 0) {
            return null;
        }

        final value:Null<Float> = Std.parseFloat(input.value);
        if (value != null) {
            return value;
        }

        throw 'could not parse ${input} as float';
    }

	public function set(val:Float):Void {
        input.placeholder = val.toString(1);
    }
}
