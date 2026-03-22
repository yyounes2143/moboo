package com.changdu.component.cpuopt;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u0004J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\b\u0010\u0012\u001a\u00020\u000fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/changdu/component/cpuopt/CpuBoostManager;", "", "()V", "TAG", "", "cpuBoostEnable", "", "cpuPerformance", "Lcom/changdu/component/cpuopt/CpuPerformance;", "inited", "boostCpu", TypedValues.TransitionType.S_DURATION, "", "reason", "init", "", "context", "Landroid/content/Context;", "stopBoost", "cpu_optimize_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SuppressLint({"StaticFieldLeak"})
/* loaded from: classes3.dex */
public final class CpuBoostManager {
    @NotNull
    public static final CpuBoostManager INSTANCE = new CpuBoostManager();
    @NotNull
    public static final String TAG = "CpuBoostManager";
    private static boolean cpuBoostEnable;
    private static CpuPerformance cpuPerformance;
    private static boolean inited;

    private CpuBoostManager() {
    }

    public static /* synthetic */ boolean boostCpu$default(CpuBoostManager cpuBoostManager, int i, String str, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str = "";
        }
        return cpuBoostManager.boostCpu(i, str);
    }

    private final void stopBoost() {
        if (inited) {
            return;
        }
        CpuPerformance cpuPerformance2 = cpuPerformance;
        if (cpuPerformance2 == null) {
            cpuPerformance2 = null;
        }
        cpuPerformance2.stopBoost();
    }

    public final boolean boostCpu(int i, @NotNull String str) {
        if (!inited) {
            return false;
        }
        CpuPerformance cpuPerformance2 = cpuPerformance;
        if (cpuPerformance2 == null) {
            cpuPerformance2 = null;
        }
        return cpuPerformance2.boostCpu(i);
    }

    public final synchronized void init(@NotNull Context context) {
        try {
            if (inited) {
                return;
            }
            if (Build.HARDWARE.equals("qcom")) {
                QcmCpuPerformance qcmCpuPerformance = new QcmCpuPerformance();
                cpuPerformance = qcmCpuPerformance;
                cpuBoostEnable = qcmCpuPerformance.init(context);
            } else {
                cpuPerformance = new VoidCpuPerformance();
                cpuBoostEnable = false;
            }
            inited = true;
        } catch (Throwable th) {
            throw th;
        }
    }
}
