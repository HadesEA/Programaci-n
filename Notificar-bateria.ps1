Add-Type -AssemblyName System.Windows.Forms
$batteryStatus = [System.Windows.Forms.SystemInformation]::PowerStatus.BatteryLifePercent
$batteryLevel = $batteryStatus * 100
Write-Host "Nivel de batería: $batteryLevel%"
if ($batteryLevel -eq 100) {
    [System.Windows.Forms.MessageBox]::Show("La bateria esta al 100%, desconectala para evitar estropearla", "Notificacion de sobre porcentaje de la bateria", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
}
