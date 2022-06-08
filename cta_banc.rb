class Usuario
    attr_accessor :nombre,:cuenta
    def initialize(nombre,cuentas)
        @nombre=nombre
        @cuentas=cuentas
    end
    def saldo_total
        @cuentas.map {|cuenta| cuenta.saldo}.sum
    end
end
    class CuentaBancaria
        attr_accessor :banco, :numero_de_cuenta, :saldo
        def initialize(banco,numero_de_cuenta, saldo = 0)
            @banco=banco
            @saldo=saldo
            @cuenta=numero_de_cuenta
        end

        def transferir(monto, cuenta_destino)
            cuenta_destino.saldo=monto + cuenta_destino.saldo
            @saldo = @saldo - monto
#            puts @saldo
        end
    end
    cuenta_01 = CuentaBancaria.new('Banco_Estado', 3000, 5000)
    cuenta_02 = CuentaBancaria.new('BCI', 4000, 10000)
    
usu_01 = Usuario.new("hola", [cuenta_01,cuenta_02])
puts cuenta_01.saldo

#usu_02 = Usuario.new("hola2", 1000)


cuenta_01.transferir(2000,cuenta_02)
puts cuenta_02.saldo
puts usu_01.saldo_total
#puts usu_02.saldo_total

