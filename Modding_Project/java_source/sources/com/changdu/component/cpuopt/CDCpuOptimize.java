package com.changdu.component.cpuopt;

import android.content.Context;
import android.os.Process;
import androidx.annotation.Keep;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Keep
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0011\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0082 J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\t\u0010\r\u001a\u00020\bH\u0082 J\t\u0010\u000e\u001a\u00020\u0006H\u0086 J\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\t\u0010\u0011\u001a\u00020\bH\u0086 J\t\u0010\u0012\u001a\u00020\u0006H\u0086 J\t\u0010\u0013\u001a\u00020\u0006H\u0086 J\b\u0010\u0014\u001a\u00020\u0006H\u0002J\u0006\u0010\u0015\u001a\u00020\u0016J\b\u0010\u0017\u001a\u00020\u0016H\u0007J\b\u0010\u0018\u001a\u00020\u0016H\u0007J\u0006\u0010\u0019\u001a\u00020\u0016J\u000e\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/changdu/component/cpuopt/CDCpuOptimize;", "", "()V", "TAG", "", "bindCurrentThreadToCpuCores", "", "coreIndices", "", "boostCpu", "", "context", "Landroid/content/Context;", "getAllCpuCoresMaxFreq", "getCpuCores", "getCpuModel", "Lcom/changdu/component/cpuopt/CpuModel;", "getCurrentThreadCpuAffinity", "getCurrentThreadCpuCore", "getRenderThreadId", "getRenderThreadTid", "optimizeCpuCores", "", "optimizeMainPriority", "optimizeRenderPriority", "resetCpuCores", "threadToCore", "core", "cpu_optimize_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCDCpuOptimize.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CDCpuOptimize.kt\ncom/changdu/component/cpuopt/CDCpuOptimize\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,216:1\n731#2,9:217\n1054#2:237\n1549#2:238\n1620#2,3:239\n37#3,2:226\n13330#4,2:228\n12313#4,2:230\n11185#4:232\n11305#4,4:233\n*S KotlinDebug\n*F\n+ 1 CDCpuOptimize.kt\ncom/changdu/component/cpuopt/CDCpuOptimize\n*L\n70#1:217,9\n174#1:237\n179#1:238\n179#1:239,3\n71#1:226,2\n140#1:228,2\n165#1:230,2\n171#1:232\n171#1:233,4\n*E\n"})
/* loaded from: classes3.dex */
public final class CDCpuOptimize {
    @NotNull
    public static final CDCpuOptimize INSTANCE = new CDCpuOptimize();
    @NotNull
    public static final String TAG = "CDCpuOpt";

    static {
        try {
            System.loadLibrary("cdcpuopt");
        } catch (Throwable unused) {
        }
    }

    private CDCpuOptimize() {
    }

    private final native int bindCurrentThreadToCpuCores(int[] iArr);

    private final native int[] getAllCpuCoresMaxFreq();

    /* JADX WARN: Removed duplicated region for block: B:21:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006f A[Catch: all -> 0x005f, TryCatch #2 {all -> 0x005f, blocks: (B:3:0x0001, B:5:0x0026, B:7:0x002c, B:9:0x0031, B:13:0x005b, B:19:0x0068, B:22:0x006f, B:24:0x0081, B:25:0x0089, B:27:0x008f, B:30:0x009c, B:32:0x00ac, B:35:0x00bb, B:37:0x00c5, B:39:0x00cd, B:31:0x00a8, B:18:0x0065), top: B:49:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int getRenderThreadTid() {
        /*
            r11 = this;
            r0 = -1
            java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> L5f
            int r2 = android.os.Process.myPid()     // Catch: java.lang.Throwable -> L5f
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5f
            r3.<init>()     // Catch: java.lang.Throwable -> L5f
            java.lang.String r4 = "/proc/"
            r3.append(r4)     // Catch: java.lang.Throwable -> L5f
            r3.append(r2)     // Catch: java.lang.Throwable -> L5f
            java.lang.String r2 = "/task/"
            r3.append(r2)     // Catch: java.lang.Throwable -> L5f
            java.lang.String r2 = r3.toString()     // Catch: java.lang.Throwable -> L5f
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L5f
            boolean r2 = r1.isDirectory()     // Catch: java.lang.Throwable -> L5f
            if (r2 == 0) goto Ld9
            java.io.File[] r1 = r1.listFiles()     // Catch: java.lang.Throwable -> L5f
            if (r1 == 0) goto Ld9
            int r2 = r1.length     // Catch: java.lang.Throwable -> L5f
            r3 = 0
            r4 = r3
        L2f:
            if (r4 >= r2) goto Ld9
            r5 = r1[r4]     // Catch: java.lang.Throwable -> L5f
            java.lang.String r6 = ""
            r7 = 0
            java.io.BufferedReader r8 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L63
            java.io.FileReader r9 = new java.io.FileReader     // Catch: java.lang.Throwable -> L63
            java.lang.String r5 = r5.getPath()     // Catch: java.lang.Throwable -> L63
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L63
            r10.<init>()     // Catch: java.lang.Throwable -> L63
            r10.append(r5)     // Catch: java.lang.Throwable -> L63
            java.lang.String r5 = "/stat"
            r10.append(r5)     // Catch: java.lang.Throwable -> L63
            java.lang.String r5 = r10.toString()     // Catch: java.lang.Throwable -> L63
            r9.<init>(r5)     // Catch: java.lang.Throwable -> L63
            r5 = 100
            r8.<init>(r9, r5)     // Catch: java.lang.Throwable -> L63
            java.lang.String r6 = r8.readLine()     // Catch: java.lang.Throwable -> L62
            r8.close()     // Catch: java.lang.Throwable -> L5f
            goto L68
        L5f:
            r1 = move-exception
            goto Ld6
        L62:
            r7 = r8
        L63:
            if (r7 == 0) goto L68
            r7.close()     // Catch: java.lang.Throwable -> L5f
        L68:
            int r5 = r6.length()     // Catch: java.lang.Throwable -> L5f
            if (r5 != 0) goto L6f
            goto Ld2
        L6f:
            kotlin.text.Regex r5 = new kotlin.text.Regex     // Catch: java.lang.Throwable -> L5f
            java.lang.String r7 = " "
            r5.<init>(r7)     // Catch: java.lang.Throwable -> L5f
            java.util.List r5 = r5.split(r6, r3)     // Catch: java.lang.Throwable -> L5f
            boolean r6 = r5.isEmpty()     // Catch: java.lang.Throwable -> L5f
            r7 = 1
            if (r6 != 0) goto La8
            int r6 = r5.size()     // Catch: java.lang.Throwable -> L5f
            java.util.ListIterator r6 = r5.listIterator(r6)     // Catch: java.lang.Throwable -> L5f
        L89:
            boolean r8 = r6.hasPrevious()     // Catch: java.lang.Throwable -> L5f
            if (r8 == 0) goto La8
            java.lang.Object r8 = r6.previous()     // Catch: java.lang.Throwable -> L5f
            java.lang.String r8 = (java.lang.String) r8     // Catch: java.lang.Throwable -> L5f
            int r8 = r8.length()     // Catch: java.lang.Throwable -> L5f
            if (r8 != 0) goto L9c
            goto L89
        L9c:
            java.lang.Iterable r5 = (java.lang.Iterable) r5     // Catch: java.lang.Throwable -> L5f
            int r6 = r6.nextIndex()     // Catch: java.lang.Throwable -> L5f
            int r6 = r6 + r7
            java.util.List r5 = kotlin.collections.CollectionsKt.take(r5, r6)     // Catch: java.lang.Throwable -> L5f
            goto Lac
        La8:
            java.util.List r5 = kotlin.collections.CollectionsKt.emptyList()     // Catch: java.lang.Throwable -> L5f
        Lac:
            java.util.Collection r5 = (java.util.Collection) r5     // Catch: java.lang.Throwable -> L5f
            java.lang.String[] r6 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L5f
            java.lang.Object[] r5 = r5.toArray(r6)     // Catch: java.lang.Throwable -> L5f
            java.lang.String[] r5 = (java.lang.String[]) r5     // Catch: java.lang.Throwable -> L5f
            int r6 = r5.length     // Catch: java.lang.Throwable -> L5f
            r8 = 2
            if (r6 >= r8) goto Lbb
            goto Ld2
        Lbb:
            r6 = r5[r7]     // Catch: java.lang.Throwable -> L5f
            java.lang.String r7 = "(RenderThread)"
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r7)     // Catch: java.lang.Throwable -> L5f
            if (r6 == 0) goto Ld2
            r1 = r5[r3]     // Catch: java.lang.Throwable -> L5f
            java.lang.Integer r1 = kotlin.text.StringsKt.toIntOrNull(r1)     // Catch: java.lang.Throwable -> L5f
            if (r1 == 0) goto Ld1
            int r0 = r1.intValue()     // Catch: java.lang.Throwable -> L5f
        Ld1:
            return r0
        Ld2:
            int r4 = r4 + 1
            goto L2f
        Ld6:
            r1.printStackTrace()
        Ld9:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.cpuopt.CDCpuOptimize.getRenderThreadTid():int");
    }

    @JvmStatic
    public static final void optimizeMainPriority() {
        try {
            Process.setThreadPriority(-19);
        } catch (Throwable unused) {
        }
    }

    @JvmStatic
    public static final void optimizeRenderPriority() {
        try {
            int renderThreadTid = INSTANCE.getRenderThreadTid();
            if (renderThreadTid != -1) {
                Process.setThreadPriority(renderThreadTid, -19);
            }
        } catch (Throwable unused) {
        }
    }

    public final boolean boostCpu(@NotNull Context context) {
        try {
            CpuBoostManager cpuBoostManager = CpuBoostManager.INSTANCE;
            cpuBoostManager.init(context.getApplicationContext());
            return CpuBoostManager.boostCpu$default(cpuBoostManager, 5000, null, 2, null);
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public final native int getCpuCores();

    @Nullable
    public final CpuModel getCpuModel() {
        boolean z;
        try {
            int cpuCores = getCpuCores();
            int currentThreadCpuCore = getCurrentThreadCpuCore();
            ArrayList arrayList = new ArrayList();
            int[] currentThreadCpuAffinity = getCurrentThreadCpuAffinity();
            if (currentThreadCpuAffinity.length == 0) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                for (int i : currentThreadCpuAffinity) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            return new CpuModel(cpuCores, CollectionsKt.toIntArray(arrayList), currentThreadCpuCore, getAllCpuCoresMaxFreq());
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @NotNull
    public final native int[] getCurrentThreadCpuAffinity();

    public final native int getCurrentThreadCpuCore();

    public final native int getRenderThreadId();

    public final void optimizeCpuCores() {
        try {
            CpuModel cpuModel = getCpuModel();
            if (cpuModel != null) {
                int length = cpuModel.getCpuFreq().length;
                if (cpuModel.getCpuCount() > 4 && length != 0 && cpuModel.getCpuCount() == length) {
                    boolean z = false;
                    int i = cpuModel.getCpuFreq()[0];
                    for (int i2 : cpuModel.getCpuFreq()) {
                        if (i2 != i) {
                            int[] cpuFreq = cpuModel.getCpuFreq();
                            ArrayList arrayList = new ArrayList(cpuFreq.length);
                            int length2 = cpuFreq.length;
                            int i3 = 0;
                            int i4 = 0;
                            while (i3 < length2) {
                                arrayList.add(new Pair(Integer.valueOf(i4), Integer.valueOf(cpuFreq[i3])));
                                i3++;
                                i4++;
                            }
                            List sortedWith = CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.changdu.component.cpuopt.CDCpuOptimize$optimizeCpuCores$$inlined$sortedByDescending$1
                                @Override // java.util.Comparator
                                public final int compare(T t, T t2) {
                                    return ComparisonsKt.compareValues((Integer) ((Pair) t2).getSecond(), (Integer) ((Pair) t).getSecond());
                                }
                            });
                            Objects.toString(sortedWith);
                            List<Pair> take = CollectionsKt.take(sortedWith, sortedWith.size() / 2);
                            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(take, 10));
                            for (Pair pair : take) {
                                arrayList2.add(Integer.valueOf(((Number) pair.getFirst()).intValue()));
                            }
                            int[] intArray = CollectionsKt.toIntArray(arrayList2);
                            if (intArray.length == 0) {
                                z = true;
                            }
                            if (!z) {
                                bindCurrentThreadToCpuCores(intArray);
                                return;
                            }
                            return;
                        }
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void resetCpuCores() {
        try {
            int cpuCores = getCpuCores();
            if (cpuCores > 0) {
                int[] iArr = new int[cpuCores];
                for (int i = 0; i < cpuCores; i++) {
                    iArr[i] = i;
                }
                bindCurrentThreadToCpuCores(iArr);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void threadToCore(int i) {
        try {
            bindCurrentThreadToCpuCores(new int[]{i});
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
