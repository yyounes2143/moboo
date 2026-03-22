package com.appsflyer.internal;

import android.content.Context;
import androidx.annotation.WorkerThread;
import com.appsflyer.AFLogger;
import com.appsflyer.internal.AFc1aSDK;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@WorkerThread
@SourceDebugExtension({"SMAP\nExceptionManageCacheImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionManageCacheImpl.kt\ncom/appsflyer/internal/components/monitorsdk/exmanager/ExceptionManageCacheImpl\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,130:1\n11653#2,9:131\n13579#2:140\n11653#2,9:141\n13579#2:150\n13580#2:152\n11662#2:153\n13580#2:155\n11662#2:156\n4117#2:158\n4217#2,2:159\n4117#2:165\n4217#2,2:166\n1#3:151\n1#3:154\n1#3:157\n1549#4:161\n1620#4,3:162\n1549#4:168\n1620#4,3:169\n*S KotlinDebug\n*F\n+ 1 ExceptionManageCacheImpl.kt\ncom/appsflyer/internal/components/monitorsdk/exmanager/ExceptionManageCacheImpl\n*L\n69#1:131,9\n69#1:140\n71#1:141,9\n71#1:150\n71#1:152\n71#1:153\n69#1:155\n69#1:156\n101#1:158\n101#1:159,2\n119#1:165\n119#1:166,2\n71#1:151\n69#1:154\n101#1:161\n101#1:162,3\n120#1:168\n120#1:169,3\n*E\n"})
/* loaded from: classes3.dex */
public final class AFd1ySDK implements AFc1cSDK {
    @NotNull
    private final AFc1hSDK getMonetizationNetwork;

    public AFd1ySDK(@NotNull AFc1hSDK aFc1hSDK) {
        this.getMonetizationNetwork = aFc1hSDK;
    }

    private final File AFAdRevenueData() {
        Context context = this.getMonetizationNetwork.getMonetizationNetwork;
        if (context != null) {
            File file = new File(context.getFilesDir(), "AFExceptionsCache");
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        }
        return null;
    }

    @Override // com.appsflyer.internal.AFc1cSDK
    public final boolean getCurrencyIso4217Code() {
        return getMonetizationNetwork(new String[0]);
    }

    @Override // com.appsflyer.internal.AFc1cSDK
    public final int getMediationNetwork() {
        int i = 0;
        for (AFc1aSDK aFc1aSDK : getRevenue()) {
            i += aFc1aSDK.getMediationNetwork;
        }
        return i;
    }

    @Override // com.appsflyer.internal.AFc1cSDK
    public final boolean getMonetizationNetwork(@NotNull String... strArr) {
        boolean z;
        synchronized (this) {
            try {
                File AFAdRevenueData = AFAdRevenueData();
                z = true;
                if (AFAdRevenueData != null) {
                    if (strArr.length == 0) {
                        AFh1ySDK.v$default(AFLogger.INSTANCE, AFg1cSDK.EXCEPTION_MANAGER, "delete all exceptions", false, 4, null);
                        z = FilesKt.deleteRecursively(AFAdRevenueData);
                    } else {
                        AFh1ySDK.v$default(AFLogger.INSTANCE, AFg1cSDK.EXCEPTION_MANAGER, "delete all exceptions except for: " + ArraysKt.joinToString$default(strArr, ", ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62, (Object) null), false, 4, null);
                        File[] listFiles = AFAdRevenueData.listFiles();
                        if (listFiles != null) {
                            ArrayList arrayList = new ArrayList();
                            for (File file : listFiles) {
                                if (!ArraysKt.contains(strArr, file.getName())) {
                                    arrayList.add(file);
                                }
                            }
                            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
                            int size = arrayList.size();
                            int i = 0;
                            while (i < size) {
                                Object obj = arrayList.get(i);
                                i++;
                                arrayList2.add(Boolean.valueOf(FilesKt.deleteRecursively((File) obj)));
                            }
                            Set set = CollectionsKt.toSet(arrayList2);
                            if (set.isEmpty()) {
                                set = SetsKt.setOf(Boolean.TRUE);
                            }
                            if (set.size() != 1 || !((Boolean) CollectionsKt.first(set)).booleanValue()) {
                                z = false;
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // com.appsflyer.internal.AFc1cSDK
    @NotNull
    public final List<AFc1aSDK> getRevenue() {
        List<AFc1aSDK> list;
        File[] listFiles;
        ArrayList arrayList;
        synchronized (this) {
            try {
                File AFAdRevenueData = AFAdRevenueData();
                list = null;
                if (AFAdRevenueData != null && (listFiles = AFAdRevenueData.listFiles()) != null) {
                    ArrayList arrayList2 = new ArrayList();
                    for (File file : listFiles) {
                        File[] listFiles2 = file.listFiles();
                        if (listFiles2 != null) {
                            arrayList = new ArrayList();
                            for (File file2 : listFiles2) {
                                AFc1aSDK.AFa1zSDK aFa1zSDK = AFc1aSDK.AFa1zSDK;
                                AFc1aSDK mediationNetwork = AFc1aSDK.AFa1zSDK.getMediationNetwork(FilesKt.readText$default(file2, null, 1, null));
                                if (mediationNetwork != null) {
                                    arrayList.add(mediationNetwork);
                                }
                            }
                        } else {
                            arrayList = null;
                        }
                        if (arrayList != null) {
                            arrayList2.add(arrayList);
                        }
                    }
                    list = CollectionsKt.flatten(arrayList2);
                }
                if (list == null) {
                    list = CollectionsKt.emptyList();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return list;
    }

    @Override // com.appsflyer.internal.AFc1cSDK
    public final void getCurrencyIso4217Code(int i, int i2) {
        File[] listFiles;
        synchronized (this) {
            try {
                File AFAdRevenueData = AFAdRevenueData();
                if (AFAdRevenueData != null && (listFiles = AFAdRevenueData.listFiles()) != null) {
                    ArrayList arrayList = new ArrayList();
                    int i3 = 0;
                    for (File file : listFiles) {
                        int mediationNetwork = AFk1xSDK.getMediationNetwork(file.getName());
                        if (i > mediationNetwork || mediationNetwork > i2) {
                            arrayList.add(file);
                        }
                    }
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
                    int size = arrayList.size();
                    while (i3 < size) {
                        Object obj = arrayList.get(i3);
                        i3++;
                        arrayList2.add(Boolean.valueOf(FilesKt.deleteRecursively((File) obj)));
                    }
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.appsflyer.internal.AFc1cSDK
    @Nullable
    public final String AFAdRevenueData(@NotNull Throwable th, @NotNull String str) {
        String str2;
        File file;
        synchronized (this) {
            File AFAdRevenueData = AFAdRevenueData();
            str2 = null;
            if (AFAdRevenueData != null) {
                file = new File(AFAdRevenueData, "6.17.5");
                if (!file.exists()) {
                    file.mkdirs();
                }
            } else {
                file = null;
            }
            if (file != null) {
                try {
                    AFc1aSDK revenue = AFd1sSDK.getRevenue(th, str);
                    String str3 = revenue.AFAdRevenueData;
                    File file2 = new File(file, str3);
                    if (file2.exists()) {
                        AFc1aSDK.AFa1zSDK aFa1zSDK = AFc1aSDK.AFa1zSDK;
                        AFc1aSDK mediationNetwork = AFc1aSDK.AFa1zSDK.getMediationNetwork(FilesKt.readText$default(file2, null, 1, null));
                        if (mediationNetwork != null) {
                            mediationNetwork.getMediationNetwork++;
                            revenue = mediationNetwork;
                        }
                    }
                    FilesKt.writeText$default(file2, revenue.getMonetizationNetwork(), null, 2, null);
                    str2 = str3;
                } catch (Exception e) {
                    AFh1ySDK.v$default(AFLogger.INSTANCE, AFg1cSDK.EXCEPTION_MANAGER, "Could not cache exception\n " + e.getMessage(), false, 4, null);
                }
            }
        }
        return str2;
    }
}
