package com.changdu.component.cpuopt;

import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0010J\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\fJ\u000e\u0010\u0016\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u0017\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u0018\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u000eJ\n\u0010\u0012\u001a\u00020\u0013*\u00020\u0005R?\u0010\u0003\u001a&\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005 \u0006*\u0012\u0012\u000e\b\u0001\u0012\n \u0006*\u0004\u0018\u00010\u00050\u00050\u00040\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\u0019"}, d2 = {"Lcom/changdu/component/cpuopt/CpuReadUtil;", "", "()V", "cpuFiles", "", "Ljava/io/File;", "kotlin.jvm.PlatformType", "getCpuFiles", "()[Ljava/io/File;", "cpuFiles$delegate", "Lkotlin/Lazy;", "cpuIndexPath", "", "cpuIndex", "", "printAllCpuFreq", "", "readAllCpuFreq", "readLong", "", "basePath", "childPath", "scalingCurFreq", "scalingMaxFreq", "scalingMinFreq", "cpu_optimize_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CpuReadUtil {
    @NotNull
    public static final CpuReadUtil INSTANCE = new CpuReadUtil();
    @NotNull
    private static final Lazy cpuFiles$delegate = LazyKt.lazy(new Function0<File[]>() { // from class: com.changdu.component.cpuopt.CpuReadUtil$cpuFiles$2
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final File[] invoke() {
            File[] listFiles = new File("/sys/devices/system/cpu").listFiles(new FilenameFilter() { // from class: com.changdu.component.cpuopt.CpuReadUtil$cpuFiles$2$filter$1
                @Override // java.io.FilenameFilter
                public boolean accept(@NotNull File file, @NotNull String str) {
                    return Pattern.matches("cpu[0-9]", str);
                }
            });
            return listFiles == null ? new File[0] : listFiles;
        }
    });

    private CpuReadUtil() {
    }

    private final String cpuIndexPath(int i) {
        return "/sys/devices/system/cpu/cpu" + i + "/";
    }

    @NotNull
    public final File[] getCpuFiles() {
        return (File[]) cpuFiles$delegate.getValue();
    }

    public final void printAllCpuFreq() {
        int length = getCpuFiles().length;
        for (int i = 0; i < length; i++) {
            try {
                scalingMinFreq(i);
                scalingMaxFreq(i);
                scalingCurFreq(i);
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
    }

    public final void readAllCpuFreq() {
        new File("/sys/devices/system/cpu");
    }

    public final long readLong(@NotNull File file) {
        return Long.parseLong(StringsKt.trim((CharSequence) FilesKt.readText$default(file, null, 1, null)).toString());
    }

    public final long scalingCurFreq(int i) {
        return readLong(cpuIndexPath(i), "cpufreq/scaling_cur_freq");
    }

    public final long scalingMaxFreq(int i) {
        return readLong(cpuIndexPath(i), "cpufreq/scaling_max_freq");
    }

    public final long scalingMinFreq(int i) {
        return readLong(cpuIndexPath(i), "cpufreq/scaling_min_freq");
    }

    public final long readLong(@NotNull String str, @NotNull String str2) {
        return readLong(new File(str, str2));
    }
}
