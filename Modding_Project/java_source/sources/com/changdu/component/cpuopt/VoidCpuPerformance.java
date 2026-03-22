package com.changdu.component.cpuopt;

import android.content.Context;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\rH\u0016¨\u0006\u000e"}, d2 = {"Lcom/changdu/component/cpuopt/VoidCpuPerformance;", "Lcom/changdu/component/cpuopt/CpuPerformance;", "()V", "boostCpu", "", TypedValues.TransitionType.S_DURATION, "", "commands", "", "init", "context", "Landroid/content/Context;", "stopBoost", "", "cpu_optimize_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class VoidCpuPerformance implements CpuPerformance {
    @Override // com.changdu.component.cpuopt.CpuPerformance
    public boolean boostCpu(int i) {
        return false;
    }

    @Override // com.changdu.component.cpuopt.CpuPerformance
    public boolean init(@NotNull Context context) {
        return false;
    }

    @Override // com.changdu.component.cpuopt.CpuPerformance
    public boolean boostCpu(int i, @NotNull int[] iArr) {
        return false;
    }

    @Override // com.changdu.component.cpuopt.CpuPerformance
    public void stopBoost() {
    }
}
