import Foundation

public extension Command {
    enum Mode01: UInt8, RawRepresentable {

        case status = 0x01
        case freezeFrame = 0x02
        case fuelStatus = 0x03
        case engineLoad = 0x04
        case coolantTemp = 0x05
        case shortFuelTrim1 = 0x06
        case longFuelTrim1 = 0x07
        case shortFuelTrim2 = 0x08
        case longFuelTrim = 0x09

        case fuelPressure = 0x0A
        case intakePressure = 0x0B
        case rpm = 0x0C
        case spped = 0x0D
        case timingAdvance = 0x0E
        case intakeTemp = 0x0F

        case maf = 0x10
        case throttlePosition = 0x11
        case airStatus = 0x12
        case o2sensor = 0x13

        public var mode: Mode {
            return .currentData01
        }

    }
}


/*

 00    PIDS_A    Supported PIDs [01-20]    bitarray
 01    STATUS    Status since DTCs cleared    special
 02    FREEZE_DTC    DTC that triggered the freeze frame    special
 03    FUEL_STATUS    Fuel System Status    (string, string)
 04    ENGINE_LOAD    Calculated Engine Load    Unit.percent
 05    COOLANT_TEMP    Engine Coolant Temperature    Unit.celsius
 06    SHORT_FUEL_TRIM_1    Short Term Fuel Trim - Bank 1    Unit.percent
 07    LONG_FUEL_TRIM_1    Long Term Fuel Trim - Bank 1    Unit.percent
 08    SHORT_FUEL_TRIM_2    Short Term Fuel Trim - Bank 2    Unit.percent
 09    LONG_FUEL_TRIM_2    Long Term Fuel Trim - Bank 2    Unit.percent

 0A    FUEL_PRESSURE    Fuel Pressure    Unit.kilopascal
 0B    INTAKE_PRESSURE    Intake Manifold Pressure    Unit.kilopascal
 0C    RPM    Engine RPM    Unit.rpm
 0D    SPEED    Vehicle Speed    Unit.kph
 0E    TIMING_ADVANCE    Timing Advance    Unit.degree
 0F    INTAKE_TEMP    Intake Air Temp    Unit.celsius

 10    MAF    Air Flow Rate (MAF)    Unit.grams_per_second
 11    THROTTLE_POS    Throttle Position    Unit.percent
 12    AIR_STATUS    Secondary Air Status    string
 13    O2_SENSORS    O2 Sensors Present    special
 14    O2_B1S1    O2: Bank 1 - Sensor 1 Voltage    Unit.volt
 15    O2_B1S2    O2: Bank 1 - Sensor 2 Voltage    Unit.volt
 16    O2_B1S3    O2: Bank 1 - Sensor 3 Voltage    Unit.volt
 17    O2_B1S4    O2: Bank 1 - Sensor 4 Voltage    Unit.volt
 18    O2_B2S1    O2: Bank 2 - Sensor 1 Voltage    Unit.volt
 19    O2_B2S2    O2: Bank 2 - Sensor 2 Voltage    Unit.volt
 1A    O2_B2S3    O2: Bank 2 - Sensor 3 Voltage    Unit.volt
 1B    O2_B2S4    O2: Bank 2 - Sensor 4 Voltage    Unit.volt
 1C    OBD_COMPLIANCE    OBD Standards Compliance    string
 1D    O2_SENSORS_ALT    O2 Sensors Present (alternate)    special
 1E    AUX_INPUT_STATUS    Auxiliary input status (power take off)    boolean
 1F    RUN_TIME    Engine Run Time    Unit.second
 20    PIDS_B    Supported PIDs [21-40]    bitarray
 21    DISTANCE_W_MIL    Distance Traveled with MIL on    Unit.kilometer
 22    FUEL_RAIL_PRESSURE_VAC    Fuel Rail Pressure (relative to vacuum)    Unit.kilopascal
 23    FUEL_RAIL_PRESSURE_DIRECT    Fuel Rail Pressure (direct inject)    Unit.kilopascal
 24    O2_S1_WR_VOLTAGE    02 Sensor 1 WR Lambda Voltage    Unit.volt
 25    O2_S2_WR_VOLTAGE    02 Sensor 2 WR Lambda Voltage    Unit.volt
 26    O2_S3_WR_VOLTAGE    02 Sensor 3 WR Lambda Voltage    Unit.volt
 27    O2_S4_WR_VOLTAGE    02 Sensor 4 WR Lambda Voltage    Unit.volt
 28    O2_S5_WR_VOLTAGE    02 Sensor 5 WR Lambda Voltage    Unit.volt
 29    O2_S6_WR_VOLTAGE    02 Sensor 6 WR Lambda Voltage    Unit.volt
 2A    O2_S7_WR_VOLTAGE    02 Sensor 7 WR Lambda Voltage    Unit.volt
 2B    O2_S8_WR_VOLTAGE    02 Sensor 8 WR Lambda Voltage    Unit.volt
 2C    COMMANDED_EGR    Commanded EGR    Unit.percent
 2D    EGR_ERROR    EGR Error    Unit.percent
 2E    EVAPORATIVE_PURGE    Commanded Evaporative Purge    Unit.percent
 2F    FUEL_LEVEL    Fuel Level Input    Unit.percent
 30    WARMUPS_SINCE_DTC_CLEAR    Number of warm-ups since codes cleared    Unit.count
 31    DISTANCE_SINCE_DTC_CLEAR    Distance traveled since codes cleared    Unit.kilometer
 32    EVAP_VAPOR_PRESSURE    Evaporative system vapor pressure    Unit.pascal
 33    BAROMETRIC_PRESSURE    Barometric Pressure    Unit.kilopascal
 34    O2_S1_WR_CURRENT    02 Sensor 1 WR Lambda Current    Unit.milliampere
 35    O2_S2_WR_CURRENT    02 Sensor 2 WR Lambda Current    Unit.milliampere
 36    O2_S3_WR_CURRENT    02 Sensor 3 WR Lambda Current    Unit.milliampere
 37    O2_S4_WR_CURRENT    02 Sensor 4 WR Lambda Current    Unit.milliampere
 38    O2_S5_WR_CURRENT    02 Sensor 5 WR Lambda Current    Unit.milliampere
 39    O2_S6_WR_CURRENT    02 Sensor 6 WR Lambda Current    Unit.milliampere
 3A    O2_S7_WR_CURRENT    02 Sensor 7 WR Lambda Current    Unit.milliampere
 3B    O2_S8_WR_CURRENT    02 Sensor 8 WR Lambda Current    Unit.milliampere
 3C    CATALYST_TEMP_B1S1    Catalyst Temperature: Bank 1 - Sensor 1    Unit.celsius
 3D    CATALYST_TEMP_B2S1    Catalyst Temperature: Bank 2 - Sensor 1    Unit.celsius
 3E    CATALYST_TEMP_B1S2    Catalyst Temperature: Bank 1 - Sensor 2    Unit.celsius
 3F    CATALYST_TEMP_B2S2    Catalyst Temperature: Bank 2 - Sensor 2    Unit.celsius
 40    PIDS_C    Supported PIDs [41-60]    bitarray
 41    STATUS_DRIVE_CYCLE    Monitor status this drive cycle    special
 42    CONTROL_MODULE_VOLTAGE    Control module voltage    Unit.volt
 43    ABSOLUTE_LOAD    Absolute load value    Unit.percent
 44    COMMANDED_EQUIV_RATIO    Commanded equivalence ratio    Unit.ratio
 45    RELATIVE_THROTTLE_POS    Relative throttle position    Unit.percent
 46    AMBIANT_AIR_TEMP    Ambient air temperature    Unit.celsius
 47    THROTTLE_POS_B    Absolute throttle position B    Unit.percent
 48    THROTTLE_POS_C    Absolute throttle position C    Unit.percent
 49    ACCELERATOR_POS_D    Accelerator pedal position D    Unit.percent
 4A    ACCELERATOR_POS_E    Accelerator pedal position E    Unit.percent
 4B    ACCELERATOR_POS_F    Accelerator pedal position F    Unit.percent
 4C    THROTTLE_ACTUATOR    Commanded throttle actuator    Unit.percent
 4D    RUN_TIME_MIL    Time run with MIL on    Unit.minute
 4E    TIME_SINCE_DTC_CLEARED    Time since trouble codes cleared    Unit.minute
 4F    unsupported    unsupported
 50    MAX_MAF    Maximum value for mass air flow sensor    Unit.grams_per_second
 51    FUEL_TYPE    Fuel Type    string
 52    ETHANOL_PERCENT    Ethanol Fuel Percent    Unit.percent
 53    EVAP_VAPOR_PRESSURE_ABS    Absolute Evap system Vapor Pressure    Unit.kilopascal
 54    EVAP_VAPOR_PRESSURE_ALT    Evap system vapor pressure    Unit.pascal
 55    SHORT_O2_TRIM_B1    Short term secondary O2 trim - Bank 1    Unit.percent
 56    LONG_O2_TRIM_B1    Long term secondary O2 trim - Bank 1    Unit.percent
 57    SHORT_O2_TRIM_B2    Short term secondary O2 trim - Bank 2    Unit.percent
 58    LONG_O2_TRIM_B2    Long term secondary O2 trim - Bank 2    Unit.percent
 59    FUEL_RAIL_PRESSURE_ABS    Fuel rail pressure (absolute)    Unit.kilopascal
 5A    RELATIVE_ACCEL_POS    Relative accelerator pedal position    Unit.percent
 5B    HYBRID_BATTERY_REMAINING    Hybrid battery pack remaining life    Unit.percent
 5C    OIL_TEMP    Engine oil temperature    Unit.celsius
 5D    FUEL_INJECT_TIMING    Fuel injection timing    Unit.degree
 5E    FUEL_RATE    Engine fuel rate    Unit.liters_per_hour
 5F    unsupported    unsupported

 */
