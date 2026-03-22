package com.changdu.component.cpuopt;

import androidx.annotation.Keep;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J1\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J\b\u0010\u0018\u001a\u00020\u0019H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\f¨\u0006\u001a"}, d2 = {"Lcom/changdu/component/cpuopt/CpuModel;", "", "cpuCount", "", "cpuAffinity", "", "currentCpuCore", "cpuFreq", "(I[II[I)V", "getCpuAffinity", "()[I", "getCpuCount", "()I", "getCpuFreq", "getCurrentCpuCore", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "", "cpu_optimize_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CpuModel {
    @NotNull
    private final int[] cpuAffinity;
    private final int cpuCount;
    @NotNull
    private final int[] cpuFreq;
    private final int currentCpuCore;

    public CpuModel(int i, @NotNull int[] iArr, int i2, @NotNull int[] iArr2) {
        this.cpuCount = i;
        this.cpuAffinity = iArr;
        this.currentCpuCore = i2;
        this.cpuFreq = iArr2;
    }

    public static /* synthetic */ CpuModel copy$default(CpuModel cpuModel, int i, int[] iArr, int i2, int[] iArr2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = cpuModel.cpuCount;
        }
        if ((i3 & 2) != 0) {
            iArr = cpuModel.cpuAffinity;
        }
        if ((i3 & 4) != 0) {
            i2 = cpuModel.currentCpuCore;
        }
        if ((i3 & 8) != 0) {
            iArr2 = cpuModel.cpuFreq;
        }
        return cpuModel.copy(i, iArr, i2, iArr2);
    }

    public final int component1() {
        return this.cpuCount;
    }

    @NotNull
    public final int[] component2() {
        return this.cpuAffinity;
    }

    public final int component3() {
        return this.currentCpuCore;
    }

    @NotNull
    public final int[] component4() {
        return this.cpuFreq;
    }

    @NotNull
    public final CpuModel copy(int i, @NotNull int[] iArr, int i2, @NotNull int[] iArr2) {
        return new CpuModel(i, iArr, i2, iArr2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CpuModel)) {
            return false;
        }
        CpuModel cpuModel = (CpuModel) obj;
        if (this.cpuCount == cpuModel.cpuCount && Intrinsics.areEqual(this.cpuAffinity, cpuModel.cpuAffinity) && this.currentCpuCore == cpuModel.currentCpuCore && Intrinsics.areEqual(this.cpuFreq, cpuModel.cpuFreq)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final int[] getCpuAffinity() {
        return this.cpuAffinity;
    }

    public final int getCpuCount() {
        return this.cpuCount;
    }

    @NotNull
    public final int[] getCpuFreq() {
        return this.cpuFreq;
    }

    public final int getCurrentCpuCore() {
        return this.currentCpuCore;
    }

    public int hashCode() {
        return (((((this.cpuCount * 31) + Arrays.hashCode(this.cpuAffinity)) * 31) + this.currentCpuCore) * 31) + Arrays.hashCode(this.cpuFreq);
    }

    @NotNull
    public String toString() {
        int i = this.cpuCount;
        String joinToString$default = ArraysKt.joinToString$default(this.cpuAffinity, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 63, (Object) null);
        int i2 = this.currentCpuCore;
        String joinToString$default2 = ArraysKt.joinToString$default(this.cpuFreq, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 63, (Object) null);
        return "CpuModel(cpuCount=" + i + ", cpuAffinity=" + joinToString$default + ", currentCpuCore=" + i2 + ", cpuFreq=" + joinToString$default2 + ")";
    }
}
