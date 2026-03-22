package com.tencent.thumbplayer.tcmedia.core.common;

import android.app.ActivityManager;
import android.content.Context;
import android.media.AudioManager;
import android.media.audiofx.AudioEffect;
import android.os.Build;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.util.regex.Pattern;
/* loaded from: classes6.dex */
public class TPSystemInfo {
    public static final int CHIP_ARM_AARCH64 = 7;
    public static final int CHIP_ARM_LATER = 50;
    public static final int CHIP_ARM_V5 = 3;
    public static final int CHIP_ARM_V6 = 4;
    public static final int CHIP_ARM_V7_NENO = 6;
    public static final int CHIP_ARM_V7_NO_NENO = 5;
    public static final int CHIP_MIPS = 2;
    public static final int CHIP_UNKNOW = 0;
    public static final int CHIP_X86 = 1;
    public static final int CPU_HW_HISI = 2;
    public static final int CPU_HW_MTK = 1;
    public static final int CPU_HW_OTHER = -1;
    public static final int CPU_HW_QUALCOMM = 0;
    public static final int CPU_HW_SAMSUNG = 3;
    public static final String KEY_PROPERTY_BOARD = "ro.product.board";
    public static final String KEY_PROPERTY_DEVICE = "ro.product.device";
    public static final String KEY_PROPERTY_MANUFACTURER = "ro.product.manufacturer";
    public static final String KEY_PROPERTY_MODEL = "ro.product.model";
    public static final String KEY_PROPERTY_VERSION_RELEASE = "ro.build.version.release";
    public static final int SDK_INT;
    private static long sAppInstallTime = 0;
    private static int sAudioBestFramesPerBust = 0;
    private static int sAudioBestSampleRate = 0;
    private static int sCpuArchitecture = 0;
    private static int sCpuHWProductIdx = -1;
    private static int sCpuHWProducter = -1;
    private static String sCpuHardware = "";
    private static String sDeviceManufacturer = "";
    private static String sDeviceName = "";
    private static String sFeature = "";
    private static String sOSVersion = "";
    private static String sProcessorName = "N/A";
    private static String sProductBoard = "";
    private static String sProductDevice = "";
    public static int sScreenHeight;
    public static int sScreenWidth;
    private static final String[][] sCpuPerfList = {new String[]{"MSM7227", "MSM7627", "MSM7227T", "MSM7627T", "MSM7227A", "MSM7627A", "QSD8250", "QSD8650", "MSM7230", "MSM7630", "APQ8055", "MSM8255", "MSM8655", "MSM8255T", "MSM8655T", "MSM8225", "MSM8625", "MSM8260", "MSM8660", "MSM8x25Q", "MSM8x26", "MSM8x10", "MSM8x12", "MSM8x30", "MSM8260A", "MSM8660A", "MSM8960", "MSM8208", "MSM8916", "MSM8960T", "MSM8909", "MSM8916v2", "MSM8936", "MSM8909v2", "MSM8917", "APQ8064", "APQ8064T", "MSM8920", "MSM8939", "MSM8937", "MSM8939v2", "MSM8940", "MSM8952", "MSM8974", "MSM8x74AA", "MSM8x74AB", "MSM8x74AC", "MSM8953", "APQ8084", "MSM8953Pro", "MSM8992", "MSM8956", "MSM8976", "MSM8976Pro", "MSM8994", "MSM8996", "MSM8996Pro", "MSM8998", "SDM845", "SM8150", "SM8250", "SM8250-AB", "SM8250-AC", "SM8350", "SM8350-AC", "SM8450"}, new String[]{"MT6516", "MT6513", "MT6573", "MT6515M", "MT6515", "MT6575", "MT6572", "MT6577", "MT6589", "MT6582", "MT6592", "MT6595", "MT6735", "MT6750", "MT6753", "MT6752", "MT6755", "MT6755", "MT6755T", "MT6795", "MT6757", "MT675x", "MT6797", "MT6797T", "MT6797X", "MT6771V", "MT6799", "MT6769Z", "MT6785T", "MT6853V", "MT6853V", "MT6873", "MT6874", "MT6875", "MT6877", "MT6885", "MT6889V", "MT6889Z", "MT6891Z", "MT6893", "MT6983"}, new String[]{"K3V2", "K3V2E", "K3V2+", "Kirin910", "Kirin920", "Kirin925", "Kirin928", "Kirin620", "Kirin650", "Kirin655", "Kirin930", "Kirin935", "Kirin950", "Kirin955", "Kirin960", "Kirin970", "Kirin810", "Kirin980", "Kirin820", "Kirin985", "Kirin990", "Kirin9000E", "Kirin9000"}, new String[]{"S5L8900", "S5PC100", "Exynos3110", "Exynos3475", "Exynos4210", "Exynos4212", "SMDK4x12", "Exynos4412", "Exynos5250", "Exynos5260", "Exynos5410", "Exynos5420", "Exynos5422", "Exynos5430", "Exynos5800", "Exynos5433", "Exynos7580", "Exynos7870", "Exynos7870", "Exynos7420", "Exynos8890", "Exynos890", "Exynos8895", "Exynos9810", "Exynos9820", "Exynos9825", "Exynos990", "Exynos1080", "Exynos2100", "Exynos2200"}};
    private static long sMaxCpuFreq = -1;
    private static long sCurrentCpuFreq = -1;
    private static int sNumOfCores = -1;
    private static int sCpuArch = -1;
    private static int sOpenGLVersion = 0;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i == 25) {
            String str = Build.VERSION.CODENAME;
            if (!TextUtils.isEmpty(str) && str.charAt(0) == 'O') {
                i = 26;
            }
        }
        SDK_INT = i;
    }

    public static int getApiLevel() {
        return Build.VERSION.SDK_INT;
    }

    public static int getBestAudioFramesPerBust() {
        return sAudioBestFramesPerBust;
    }

    public static int getBestAudioSampleRate() {
        return sAudioBestSampleRate;
    }

    public static int getCpuArchFromId(int i) {
        if (i != 64) {
            switch (i) {
                case 5:
                    return 3;
                case 6:
                    return 4;
                case 7:
                    return 6;
                case 8:
                case 9:
                case 10:
                    return 7;
                default:
                    return 0;
            }
        }
        return 7;
    }

    public static int getCpuArchitecture() {
        int cpuArchFromId;
        int i = sCpuArch;
        if (-1 != i) {
            return i;
        }
        StringBuilder sb = new StringBuilder("getCpuArchitecture Build.CPU_ABI: ");
        String str = Build.CPU_ABI;
        sb.append(str);
        TPNativeLog.printLog(2, sb.toString());
        if (str.contains("arm64-v8a")) {
            sCpuArch = 7;
            return 7;
        }
        if (str != null && (str.contains("x86") || str.contains("X86"))) {
            cpuArchFromId = 1;
        } else if (str != null && (str.contains("mips") || str.contains("Mips"))) {
            sCpuArch = 2;
            return sCpuArch;
        } else {
            if (sCpuArchitecture == 0) {
                getCpuInfo();
            }
            TPNativeLog.printLog(2, "getCpuArchitecture mCpuArchitecture:" + sCpuArchitecture);
            if (!TextUtils.isEmpty(sCpuHardware) && sCpuHardware.contains("MSM8994")) {
                sCpuArch = 7;
                return 7;
            } else if (isARMV5Whitelist()) {
                sCpuArch = 3;
                return 3;
            } else if (!TextUtils.isEmpty(sProcessorName) && sProcessorName.contains("ARMv6")) {
                sCpuArch = 4;
                return 4;
            } else if (!TextUtils.isEmpty(sProcessorName) && sProcessorName.contains("AArch64")) {
                sCpuArch = 7;
                return 7;
            } else if (sCpuArchitecture == 7 && !TextUtils.isEmpty(sFeature) && !sFeature.contains("neon") && !sFeature.contains("asimd")) {
                sCpuArch = 4;
                return 4;
            } else {
                cpuArchFromId = getCpuArchFromId(sCpuArchitecture);
            }
        }
        sCpuArch = cpuArchFromId;
        return sCpuArch;
    }

    private static int getCpuHWProducer(String str) {
        if (str.isEmpty()) {
            return -1;
        }
        if (!str.contains("Exynos") && !str.contains("SMDK") && !str.contains("S5L8900") && !str.contains("S5PC100")) {
            if (!str.contains("Kirin") && !str.contains("K3V")) {
                if (!str.contains("MSM") && !str.contains("APQ") && !str.contains("QSD") && !str.contains("SDM") && !str.contains("SM")) {
                    if (!str.contains("MT6")) {
                        return -1;
                    }
                    return 1;
                }
                return 0;
            }
            return 2;
        }
        return 3;
    }

    public static int getCpuHWProductIndex(int i, String str) {
        if (i >= 0) {
            String[][] strArr = sCpuPerfList;
            if (i >= strArr.length || TextUtils.isEmpty(str)) {
                return -1;
            }
            String[] strArr2 = strArr[i];
            for (int i2 = 0; i2 < strArr2.length; i2++) {
                if (TextUtils.equals(str, strArr2[i2])) {
                    return i2;
                }
            }
        }
        return -1;
    }

    public static int getCpuHWProducter(String str) {
        if (sCpuHWProducter < 0) {
            sCpuHWProducter = getCpuHWProducer(str);
        }
        return sCpuHWProducter;
    }

    public static String getCpuHarewareName() {
        if (TextUtils.isEmpty(sCpuHardware)) {
            getCpuInfo();
        }
        return sCpuHardware;
    }

    public static void getCpuInfo() {
        BufferedReader bufferedReader;
        InputStreamReader inputStreamReader = null;
        try {
            try {
                InputStreamReader inputStreamReader2 = new InputStreamReader(new FileInputStream("/proc/cpuinfo"), "UTF-8");
                try {
                    bufferedReader = new BufferedReader(inputStreamReader2);
                    while (true) {
                        try {
                            String readLine = bufferedReader.readLine();
                            if (readLine != null) {
                                parseCpuInfoLine(readLine);
                            } else {
                                inputStreamReader2.close();
                                bufferedReader.close();
                                return;
                            }
                        } catch (Throwable unused) {
                            inputStreamReader = inputStreamReader2;
                            try {
                                sCpuHardware = "Unknown";
                                sCpuArchitecture = 0;
                                if (inputStreamReader != null) {
                                    inputStreamReader.close();
                                }
                                if (bufferedReader != null) {
                                    bufferedReader.close();
                                    return;
                                }
                                return;
                            } catch (Throwable th) {
                                if (inputStreamReader != null) {
                                    try {
                                        inputStreamReader.close();
                                    } catch (IOException e) {
                                        TPNativeLog.printLog(4, e.getMessage());
                                        throw th;
                                    }
                                }
                                if (bufferedReader != null) {
                                    bufferedReader.close();
                                }
                                throw th;
                            }
                        }
                    }
                } catch (Throwable unused2) {
                    bufferedReader = null;
                }
            } catch (Throwable unused3) {
                bufferedReader = null;
            }
        } catch (IOException e2) {
            TPNativeLog.printLog(4, e2.getMessage());
        }
    }

    public static long getCurrentCpuFreq() {
        InputStreamReader inputStreamReader;
        Throwable th;
        BufferedReader bufferedReader;
        Exception e;
        IOException e2;
        FileNotFoundException e3;
        long j = sCurrentCpuFreq;
        if (j > 0) {
            return j;
        }
        long j2 = 1024000;
        try {
            try {
                inputStreamReader = new InputStreamReader(new FileInputStream("/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"), "UTF-8");
                try {
                    bufferedReader = new BufferedReader(inputStreamReader);
                } catch (FileNotFoundException e4) {
                    bufferedReader = null;
                    e3 = e4;
                } catch (IOException e5) {
                    bufferedReader = null;
                    e2 = e5;
                } catch (Exception e6) {
                    bufferedReader = null;
                    e = e6;
                } catch (Throwable th2) {
                    bufferedReader = null;
                    th = th2;
                }
            } catch (Throwable th3) {
                TPNativeLog.printLog(4, th3.getMessage());
                return 0L;
            }
        } catch (FileNotFoundException e7) {
            inputStreamReader = null;
            e3 = e7;
            bufferedReader = null;
        } catch (IOException e8) {
            inputStreamReader = null;
            e2 = e8;
            bufferedReader = null;
        } catch (Exception e9) {
            inputStreamReader = null;
            e = e9;
            bufferedReader = null;
        } catch (Throwable th4) {
            inputStreamReader = null;
            th = th4;
            bufferedReader = null;
        }
        try {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                inputStreamReader.close();
                bufferedReader.close();
                inputStreamReader.close();
                bufferedReader.close();
                return 0L;
            }
            String trim = readLine.trim();
            if (trim.length() > 0) {
                j2 = Long.parseLong(trim);
            }
            sCurrentCpuFreq = j2;
            inputStreamReader.close();
            bufferedReader.close();
            return j2;
        } catch (FileNotFoundException e10) {
            e3 = e10;
            TPNativeLog.printLog(4, e3.getMessage());
            if (inputStreamReader != null) {
                inputStreamReader.close();
            }
            if (bufferedReader != null) {
                bufferedReader.close();
            }
            return 1024000L;
        } catch (IOException e11) {
            e2 = e11;
            TPNativeLog.printLog(4, e2.getMessage());
            if (inputStreamReader != null) {
                inputStreamReader.close();
            }
            if (bufferedReader != null) {
                bufferedReader.close();
            }
            return 1024000L;
        } catch (Exception e12) {
            e = e12;
            TPNativeLog.printLog(4, e.getMessage());
            if (inputStreamReader != null) {
                inputStreamReader.close();
            }
            if (bufferedReader != null) {
                bufferedReader.close();
            }
            return 1024000L;
        } catch (Throwable th5) {
            th = th5;
            TPNativeLog.printLog(4, th.getMessage());
            if (inputStreamReader != null) {
                inputStreamReader.close();
            }
            if (bufferedReader != null) {
                bufferedReader.close();
            }
            return 1024000L;
        }
    }

    public static String getDeviceManufacturer() {
        if (TextUtils.isEmpty(sDeviceManufacturer)) {
            sDeviceManufacturer = Build.MANUFACTURER;
        }
        return sDeviceManufacturer;
    }

    public static synchronized String getDeviceName() {
        String str;
        synchronized (TPSystemInfo.class) {
            try {
                if (TextUtils.isEmpty(sDeviceName)) {
                    sDeviceName = Build.MODEL;
                }
                str = sDeviceName;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    public static long getMaxCpuFreq() {
        BufferedReader bufferedReader;
        InputStreamReader inputStreamReader;
        String readLine;
        long j = sMaxCpuFreq;
        if (-1 != j) {
            return j;
        }
        InputStreamReader inputStreamReader2 = null;
        long j2 = 0;
        try {
            try {
                inputStreamReader = new InputStreamReader(new FileInputStream("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"), "UTF-8");
                try {
                    bufferedReader = new BufferedReader(inputStreamReader);
                    try {
                        readLine = bufferedReader.readLine();
                    } catch (IOException unused) {
                        inputStreamReader2 = inputStreamReader;
                        if (inputStreamReader2 != null) {
                            inputStreamReader2.close();
                        }
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        sMaxCpuFreq = j2;
                        TPNativeLog.printLog(2, "MaxCpuFreq " + sMaxCpuFreq);
                        return j2;
                    } catch (Throwable unused2) {
                        inputStreamReader2 = inputStreamReader;
                        if (inputStreamReader2 != null) {
                            inputStreamReader2.close();
                        }
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        sMaxCpuFreq = j2;
                        TPNativeLog.printLog(2, "MaxCpuFreq " + sMaxCpuFreq);
                        return j2;
                    }
                } catch (IOException unused3) {
                    bufferedReader = null;
                } catch (Throwable unused4) {
                    bufferedReader = null;
                }
            } catch (IOException e) {
                TPNativeLog.printLog(4, e.getMessage());
            }
        } catch (IOException unused5) {
            bufferedReader = null;
        } catch (Throwable unused6) {
            bufferedReader = null;
        }
        if (readLine == null) {
            inputStreamReader.close();
            bufferedReader.close();
            try {
                inputStreamReader.close();
                bufferedReader.close();
            } catch (IOException e2) {
                TPNativeLog.printLog(4, e2.getMessage());
            }
            return 0L;
        }
        String trim = readLine.trim();
        if (trim.length() > 0) {
            j2 = Long.parseLong(trim);
        }
        inputStreamReader.close();
        bufferedReader.close();
        sMaxCpuFreq = j2;
        TPNativeLog.printLog(2, "MaxCpuFreq " + sMaxCpuFreq);
        return j2;
    }

    public static int getNumCores() {
        int i = sNumOfCores;
        if (-1 != i) {
            return i;
        }
        try {
            File[] listFiles = new File("/sys/devices/system/cpu/").listFiles(new FileFilter() { // from class: com.tencent.thumbplayer.tcmedia.core.common.TPSystemInfo.1CpuFilter
                @Override // java.io.FileFilter
                public boolean accept(File file) {
                    return Pattern.matches("cpu[0-9]", file.getName());
                }
            });
            if (listFiles == null) {
                sNumOfCores = 1;
                return 1;
            }
            sNumOfCores = listFiles.length;
            TPNativeLog.printLog(2, "core num " + sNumOfCores);
            return sNumOfCores;
        } catch (Exception e) {
            TPNativeLog.printLog(4, e.getMessage());
            sNumOfCores = 1;
            return 1;
        }
    }

    public static int getOpenGLSupportVersion(Context context) {
        if (sOpenGLVersion == 0) {
            try {
                ActivityManager activityManager = (ActivityManager) context.getApplicationContext().getSystemService("activity");
                if (activityManager == null) {
                    return sOpenGLVersion;
                }
                sOpenGLVersion = activityManager.getDeviceConfigurationInfo().reqGlEsVersion;
            } catch (Throwable th) {
                TPNativeLog.printLog(4, th.getMessage());
            }
        }
        return sOpenGLVersion;
    }

    public static String getOsVersion() {
        if (TextUtils.isEmpty(sOSVersion)) {
            sOSVersion = Build.VERSION.RELEASE;
        }
        return sOSVersion;
    }

    public static String getProductBoard() {
        if (TextUtils.isEmpty(sProductBoard)) {
            sProductBoard = Build.BOARD;
        }
        return sProductBoard;
    }

    public static String getProductDevice() {
        if (TextUtils.isEmpty(sProductDevice)) {
            sProductDevice = Build.DEVICE;
        }
        return sProductDevice;
    }

    public static int getScreenHeight(Context context) {
        if (context == null) {
            return 0;
        }
        int i = sScreenHeight;
        if (i != 0) {
            return i;
        }
        try {
            sScreenHeight = context.getResources().getDisplayMetrics().heightPixels;
        } catch (Throwable unused) {
            sScreenHeight = 0;
        }
        return sScreenHeight;
    }

    public static int getScreenWidth(Context context) {
        if (context == null) {
            return 0;
        }
        int i = sScreenWidth;
        if (i != 0) {
            return i;
        }
        try {
            sScreenWidth = context.getResources().getDisplayMetrics().widthPixels;
        } catch (Throwable unused) {
            sScreenWidth = 0;
        }
        return sScreenWidth;
    }

    public static int getSystemCpuUsage(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            float f = -1.0f;
            try {
                String[] split = str.trim().split("\\s+");
                long systemIdleTime = getSystemIdleTime(split);
                long systemUptime = getSystemUptime(split);
                String[] split2 = str2.trim().split("\\s+");
                long systemIdleTime2 = getSystemIdleTime(split2);
                long systemUptime2 = getSystemUptime(split2);
                if (systemIdleTime >= 0 && systemUptime >= 0 && systemIdleTime2 >= 0 && systemUptime2 >= 0) {
                    long j = systemIdleTime2 + systemUptime2;
                    long j2 = systemIdleTime + systemUptime;
                    if (j > j2 && systemUptime2 >= systemUptime) {
                        f = (((float) (systemUptime2 - systemUptime)) / ((float) (j - j2))) * 100.0f;
                    }
                }
            } catch (Throwable th) {
                TPNativeLog.printLog(4, th.getMessage());
            }
            return (int) f;
        }
        return -1;
    }

    public static long getSystemIdleTime(String[] strArr) {
        try {
            return Long.parseLong(strArr[4]);
        } catch (Throwable th) {
            th.printStackTrace();
            return -1L;
        }
    }

    public static long getSystemUptime(String[] strArr) {
        long j = 0;
        for (int i = 1; i < strArr.length; i++) {
            if (4 != i) {
                try {
                    j += Long.parseLong(strArr[i]);
                } catch (Throwable unused) {
                    return -1L;
                }
            }
        }
        return j;
    }

    private static boolean hasMarshmallow() {
        return true;
    }

    public static synchronized void initAudioBestSettings(Context context) {
        synchronized (TPSystemInfo.class) {
            if (context != null) {
                if (sAudioBestSampleRate <= 0) {
                    AudioManager audioManager = (AudioManager) context.getSystemService("audio");
                    String property = audioManager.getProperty("android.media.property.OUTPUT_SAMPLE_RATE");
                    String property2 = audioManager.getProperty("android.media.property.OUTPUT_FRAMES_PER_BUFFER");
                    try {
                        sAudioBestSampleRate = Integer.parseInt(property);
                        sAudioBestFramesPerBust = Integer.parseInt(property2);
                    } catch (NumberFormatException e) {
                        TPNativeLog.printLog(4, e.getMessage());
                    }
                }
            }
        }
    }

    public static boolean isARMV5Whitelist() {
        if (!getDeviceName().equals("XT882") && !getDeviceName().equals("ME860") && !getDeviceName().equals("MB860") && !getDeviceName().equals("Lenovo P70") && !getDeviceName().equals("Lenovo A60") && !getDeviceName().equals("Lenovo A366t")) {
            return false;
        }
        return true;
    }

    private static void parseCpuInfoLine(String str) {
        int indexOf;
        int indexOf2;
        if (str.contains("aarch64") || str.contains("AArch64")) {
            sCpuArchitecture = 64;
        }
        if (str.startsWith("Processor")) {
            int indexOf3 = str.indexOf(58);
            if (indexOf3 > 1) {
                String substring = str.substring(indexOf3 + 1, str.length());
                sProcessorName = substring;
                sProcessorName = substring.trim();
            }
        } else if (str.startsWith("CPU architecture")) {
            if (sCpuArchitecture == 0 && (indexOf2 = str.indexOf(58)) > 1) {
                String trim = str.substring(indexOf2 + 1, str.length()).trim();
                if (trim.length() > 0 && trim.length() < 2) {
                    sCpuArchitecture = (int) Long.parseLong(trim);
                } else if (trim.length() > 1) {
                    sCpuArchitecture = (int) Long.parseLong(trim.substring(0, 1));
                }
            }
        } else if (str.startsWith("Features")) {
            int indexOf4 = str.indexOf(58);
            if (indexOf4 > 1) {
                sFeature = str.substring(indexOf4 + 1, str.length()).trim();
            }
        } else if (str.startsWith("Hardware") && (indexOf = str.indexOf(58)) > 1) {
            sCpuHardware = str.substring(indexOf + 1, str.length()).trim().replace(" ", "");
            TPNativeLog.printLog(2, "hardware " + sCpuHardware);
            getCpuHWProductIndex(sCpuHardware);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0053 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.io.BufferedReader] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x003a -> B:39:0x004b). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String readStringFromFile(java.io.File r6) {
        /*
            r0 = 0
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L3e java.io.FileNotFoundException -> L41
            java.io.FileReader r2 = new java.io.FileReader     // Catch: java.lang.Throwable -> L3e java.io.FileNotFoundException -> L41
            r2.<init>(r6)     // Catch: java.lang.Throwable -> L3e java.io.FileNotFoundException -> L41
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L3e java.io.FileNotFoundException -> L41
            long r2 = r6.length()     // Catch: java.lang.Throwable -> L30 java.io.FileNotFoundException -> L32
            r4 = 2147483647(0x7fffffff, double:1.060997895E-314)
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 > 0) goto L35
            long r2 = r6.length()     // Catch: java.lang.Throwable -> L30 java.io.FileNotFoundException -> L32
            int r2 = (int) r2     // Catch: java.lang.Throwable -> L30 java.io.FileNotFoundException -> L32
            char[] r2 = new char[r2]     // Catch: java.lang.Throwable -> L30 java.io.FileNotFoundException -> L32
            long r3 = r6.length()     // Catch: java.lang.Throwable -> L30 java.io.FileNotFoundException -> L32
            int r6 = (int) r3     // Catch: java.lang.Throwable -> L30 java.io.FileNotFoundException -> L32
            r3 = 0
            int r6 = r1.read(r2, r3, r6)     // Catch: java.lang.Throwable -> L30 java.io.FileNotFoundException -> L32
            if (r6 <= 0) goto L35
            java.lang.String r6 = new java.lang.String     // Catch: java.lang.Throwable -> L30 java.io.FileNotFoundException -> L32
            r6.<init>(r2)     // Catch: java.lang.Throwable -> L30 java.io.FileNotFoundException -> L32
            r0 = r6
            goto L35
        L30:
            r6 = move-exception
            goto L43
        L32:
            r6 = move-exception
            r0 = r1
            goto L4e
        L35:
            r1.close()     // Catch: java.lang.Throwable -> L39
            goto L4b
        L39:
            r6 = move-exception
            r6.printStackTrace()
            goto L4b
        L3e:
            r6 = move-exception
            r1 = r0
            goto L43
        L41:
            r6 = move-exception
            goto L4e
        L43:
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L4c
            if (r1 == 0) goto L4b
            r1.close()     // Catch: java.lang.Throwable -> L39
        L4b:
            return r0
        L4c:
            r6 = move-exception
            goto L51
        L4e:
            throw r6     // Catch: java.lang.Throwable -> L4f
        L4f:
            r6 = move-exception
            r1 = r0
        L51:
            if (r1 == 0) goto L5b
            r1.close()     // Catch: java.lang.Throwable -> L57
            goto L5b
        L57:
            r0 = move-exception
            r0.printStackTrace()
        L5b:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.tcmedia.core.common.TPSystemInfo.readStringFromFile(java.io.File):java.lang.String");
    }

    public static String readSystemStat() {
        RandomAccessFile randomAccessFile;
        String str = null;
        try {
            try {
                randomAccessFile = new RandomAccessFile("/proc/stat", "r");
            } catch (Throwable th) {
                TPNativeLog.printLog(4, th.getMessage());
            }
            try {
                str = randomAccessFile.readLine();
                randomAccessFile.close();
            } catch (Throwable th2) {
                th = th2;
                try {
                    th.printStackTrace();
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                    return str;
                } catch (Throwable th3) {
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (Throwable th4) {
                            TPNativeLog.printLog(4, th4.getMessage());
                        }
                    }
                    throw th3;
                }
            }
        } catch (Throwable th5) {
            th = th5;
            randomAccessFile = null;
        }
        return str;
    }

    public static synchronized void setDeviceName(String str) {
        synchronized (TPSystemInfo.class) {
            sDeviceName = str;
        }
    }

    public static void setProperty(String str, String str2) {
        if (TextUtils.equals(str, KEY_PROPERTY_MODEL)) {
            sDeviceName = str2;
        } else if (TextUtils.equals(str, KEY_PROPERTY_MANUFACTURER)) {
            sDeviceManufacturer = str2;
        } else if (TextUtils.equals(str, KEY_PROPERTY_VERSION_RELEASE)) {
            sOSVersion = str2;
        } else if (TextUtils.equals(str, KEY_PROPERTY_DEVICE)) {
            sProductDevice = str2;
        } else if (TextUtils.equals(str, KEY_PROPERTY_BOARD)) {
            sProductBoard = str2;
        }
    }

    public static boolean supportInDeviceDolbyAudioEffect() {
        boolean z;
        Exception e;
        try {
            z = false;
            for (AudioEffect.Descriptor descriptor : AudioEffect.queryEffects()) {
                try {
                    if (descriptor.implementor.contains("Dolby Laboratories")) {
                        z = true;
                    }
                } catch (Exception e2) {
                    e = e2;
                    TPNativeLog.printLog(4, e.getMessage());
                    return z;
                }
            }
            return z;
        } catch (Exception e3) {
            z = false;
            e = e3;
        }
    }

    private static void writeStringToFile(String str, String str2) {
        FileWriter fileWriter;
        try {
            File file = new File(str);
            if (file.exists() || !file.createNewFile()) {
                fileWriter = new FileWriter(file, false);
                try {
                    fileWriter.write(str2);
                    fileWriter.flush();
                    fileWriter.close();
                } catch (Throwable unused) {
                    if (fileWriter != null) {
                        try {
                            fileWriter.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        } catch (Throwable unused2) {
            fileWriter = null;
        }
    }

    public static int getCpuHWProductIndex(String str) {
        if (sCpuHWProducter < 0) {
            sCpuHWProducter = getCpuHWProducer(str);
        }
        int i = sCpuHWProducter;
        if (i >= 0 && sCpuHWProductIdx < 0) {
            CharSequence[] charSequenceArr = sCpuPerfList[i];
            int i2 = -1;
            for (int i3 = 0; i3 < charSequenceArr.length; i3++) {
                if (str.contains(charSequenceArr[i3]) && (-1 == i2 || charSequenceArr[i3].length() > charSequenceArr[i2].length())) {
                    i2 = i3;
                }
            }
            sCpuHWProductIdx = i2;
        }
        return sCpuHWProductIdx;
    }
}
