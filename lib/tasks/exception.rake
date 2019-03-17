# $ rake exception:exception_test
namespace :exception do
  desc "例外を試すサンプル"
  task exception_test: :environment do
    class ExceptionTest
      def test
        begin
          # 0での除算でエラーを発生させる
          1/0
        rescue ZeroDivisionError => ex
          puts "ZeroDivisionError"
        end
      end
    end
    obj = ExceptionTest.new
    # 例外発生
    obj.test # => ZeroDivisionError
  end
end
