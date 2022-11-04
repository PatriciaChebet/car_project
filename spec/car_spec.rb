require 'car'

describe 'Car' do
    describe 'attributes' do
        it 'allows reading and writing for :make' do
            car = Car.new
            car.make = "Test"
            expect(car.make).to eq("Test")
        end

        it 'allows reading and writing of :year' do
            car = Car.new
            car.year = "abc"
            expect(car.year).to eq("abc")
        end

        it 'allows reading and writing of :color' do
            car = Car.new
            car.color = "Yellow"
            expect(car.color).to eq("Yellow")
        end

        it 'allows reading for :wheels' do
            car = Car.new
            expect(car.wheels).to eq(4)
        end
    end

    describe '.colors' do
        it 'returns an array of colors' do
            c = ['blue', 'black', 'red', 'green']
            expect(Car.colors).to match_array(c)
        end
    end

    describe '#fullname' do
        it 'returns a string in the expected format' do
            @honda = Car.new(:make => "Honda", :year => 2004, :color => 'blue')
            expect(@honda.full_name).to eq('2004 Honda (blue)')
        end

        context 'when initialized with no arguments' do
            it 'returns a string using default values' do
                car = Car.new
                expect(car.full_name).to eq("2007 Volvo (unknown)")
            end
        end
    end
end