package com.changdu.component.cpuopt;

import android.content.Context;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\fH\u0016J\u0018\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u0004H\u0016J\u0010\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0018\u0010\u001a\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\u0004H\u0002J\u0018\u0010\u001c\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\u0004H\u0002J\b\u0010\u001d\u001a\u00020\u001eH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/changdu/component/cpuopt/QcmCpuPerformance;", "Lcom/changdu/component/cpuopt/CpuPerformance;", "()V", "CONFIGS_FREQUENCY_HIGH", "", "DISABLE_POWER_COLLAPSE", "acquireFunc", "Ljava/lang/reflect/Method;", "boostFramework", "Lcom/changdu/component/cpuopt/BoostFramework;", "boostHandlers", "Ljava/util/concurrent/CopyOnWriteArrayList;", "", "frameworkInstance", "", "initSuccess", "", "perfHintFunc", "releaseFunc", "useBoostFrameworkDirectly", "boostCpu", TypedValues.TransitionType.S_DURATION, "commands", "init", "context", "Landroid/content/Context;", "perfLockAcquire", "list", "perfLockAcquireByBoostFramework", "stopBoost", "", "Companion", "cpu_optimize_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nQcmCpuPerformance.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QcmCpuPerformance.kt\ncom/changdu/component/cpuopt/QcmCpuPerformance\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,222:1\n37#2,2:223\n*S KotlinDebug\n*F\n+ 1 QcmCpuPerformance.kt\ncom/changdu/component/cpuopt/QcmCpuPerformance\n*L\n192#1:223,2\n*E\n"})
/* loaded from: classes3.dex */
public final class QcmCpuPerformance implements CpuPerformance {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int MPCTLV3_ALL_CPUS_PWR_CLPS_DIS = 1077936128;
    public static final int MPCTLV3_MAX_FREQ_CLUSTER_BIG_CORE_0 = 1082146816;
    public static final int MPCTLV3_MAX_FREQ_CLUSTER_LITTLE_CORE_0 = 1082147072;
    public static final int MPCTLV3_MAX_FREQ_CLUSTER_PLUS_CORE_0 = 1082147328;
    public static final int MPCTLV3_MIN_FREQ_CLUSTER_BIG_CORE_0 = 1082130432;
    public static final int MPCTLV3_MIN_FREQ_CLUSTER_LITTLE_CORE_0 = 1082130688;
    public static final int MPCTLV3_MIN_FREQ_CLUSTER_PLUS_CORE_0 = 1082130944;
    public static final int MPCTLV3_SCHED_BOOST = 1086324736;
    @NotNull
    public static final String TAG = "QcmCpuPerformance";
    private Method acquireFunc;
    private BoostFramework boostFramework;
    private Object frameworkInstance;
    private boolean initSuccess;
    private Method perfHintFunc;
    private Method releaseFunc;
    private boolean useBoostFrameworkDirectly;
    @NotNull
    private CopyOnWriteArrayList<Integer> boostHandlers = new CopyOnWriteArrayList<>();
    @NotNull
    private int[] CONFIGS_FREQUENCY_HIGH = {MPCTLV3_ALL_CPUS_PWR_CLPS_DIS, 1, MPCTLV3_SCHED_BOOST, 1, MPCTLV3_MIN_FREQ_CLUSTER_BIG_CORE_0, 4095, MPCTLV3_MIN_FREQ_CLUSTER_LITTLE_CORE_0, 4095, MPCTLV3_MIN_FREQ_CLUSTER_PLUS_CORE_0, 4095, MPCTLV3_MAX_FREQ_CLUSTER_BIG_CORE_0, 4095, MPCTLV3_MAX_FREQ_CLUSTER_LITTLE_CORE_0, 4095, MPCTLV3_MAX_FREQ_CLUSTER_PLUS_CORE_0, 4095};
    @NotNull
    private int[] DISABLE_POWER_COLLAPSE = {MPCTLV3_ALL_CPUS_PWR_CLPS_DIS, 1};

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/changdu/component/cpuopt/QcmCpuPerformance$Companion;", "", "()V", "MPCTLV3_ALL_CPUS_PWR_CLPS_DIS", "", "MPCTLV3_MAX_FREQ_CLUSTER_BIG_CORE_0", "MPCTLV3_MAX_FREQ_CLUSTER_LITTLE_CORE_0", "MPCTLV3_MAX_FREQ_CLUSTER_PLUS_CORE_0", "MPCTLV3_MIN_FREQ_CLUSTER_BIG_CORE_0", "MPCTLV3_MIN_FREQ_CLUSTER_LITTLE_CORE_0", "MPCTLV3_MIN_FREQ_CLUSTER_PLUS_CORE_0", "MPCTLV3_SCHED_BOOST", "TAG", "", "cpu_optimize_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    private final int perfLockAcquire(int i, int[] iArr) {
        Method method = this.acquireFunc;
        if (method == null) {
            method = null;
        }
        Object obj = this.frameworkInstance;
        if (obj == null) {
            obj = Unit.INSTANCE;
        }
        Integer num = (Integer) method.invoke(obj, Integer.valueOf(i), iArr);
        int intValue = num.intValue();
        if (intValue > 0) {
            this.boostHandlers.add(num);
        }
        return intValue;
    }

    private final int perfLockAcquireByBoostFramework(int i, int[] iArr) {
        BoostFramework boostFramework = this.boostFramework;
        if (boostFramework == null) {
            boostFramework = null;
        }
        int perfLockAcquire = boostFramework.perfLockAcquire(i, Arrays.copyOf(iArr, iArr.length));
        if (perfLockAcquire > 0) {
            this.boostHandlers.add(Integer.valueOf(perfLockAcquire));
        }
        return perfLockAcquire;
    }

    @Override // com.changdu.component.cpuopt.CpuPerformance
    public boolean boostCpu(int i) {
        if (this.initSuccess) {
            try {
                if (this.useBoostFrameworkDirectly) {
                    perfLockAcquireByBoostFramework(i, this.DISABLE_POWER_COLLAPSE);
                    perfLockAcquireByBoostFramework(i, this.CONFIGS_FREQUENCY_HIGH);
                    return true;
                }
                perfLockAcquire(i, this.DISABLE_POWER_COLLAPSE);
                perfLockAcquire(i, this.CONFIGS_FREQUENCY_HIGH);
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
        return false;
    }

    @Override // com.changdu.component.cpuopt.CpuPerformance
    public boolean init(@NotNull Context context) {
        try {
            try {
                Class<?> cls = Class.forName("android.util.BoostFramework");
                Constructor<?> constructor = cls.getConstructor(Context.class);
                if (constructor == null) {
                    return false;
                }
                this.frameworkInstance = constructor.newInstance(context);
                Class<?> cls2 = Integer.TYPE;
                this.acquireFunc = cls.getDeclaredMethod("perfLockAcquire", cls2, int[].class);
                this.perfHintFunc = cls.getDeclaredMethod("perfHint", cls2, String.class, cls2, cls2);
                this.releaseFunc = cls.getDeclaredMethod("perfLockReleaseHandler", cls2);
                this.initSuccess = true;
                return true;
            } catch (Exception unused) {
                this.initSuccess = false;
                return false;
            }
        } catch (Exception unused2) {
            BoostFramework boostFramework = new BoostFramework();
            this.boostFramework = boostFramework;
            if (boostFramework.isValid()) {
                this.useBoostFrameworkDirectly = true;
                this.initSuccess = true;
                return true;
            }
            this.initSuccess = false;
            return false;
        }
    }

    @Override // com.changdu.component.cpuopt.CpuPerformance
    public void stopBoost() {
        Integer[] numArr;
        for (Integer num : (Integer[]) this.boostHandlers.toArray(new Integer[0])) {
            try {
                Method method = this.releaseFunc;
                if (method == null) {
                    method = null;
                }
                Object obj = this.frameworkInstance;
                if (obj == null) {
                    obj = Unit.INSTANCE;
                }
                method.invoke(obj, num);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.changdu.component.cpuopt.CpuPerformance
    public boolean boostCpu(int i, @NotNull int[] iArr) {
        if (this.initSuccess) {
            try {
                if (this.useBoostFrameworkDirectly) {
                    perfLockAcquireByBoostFramework(i, iArr);
                    return true;
                }
                perfLockAcquire(i, iArr);
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
        return false;
    }
}
