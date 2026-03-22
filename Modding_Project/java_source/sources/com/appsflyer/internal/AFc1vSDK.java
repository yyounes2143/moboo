package com.appsflyer.internal;

import android.util.Base64;
import androidx.annotation.WorkerThread;
import com.appsflyer.AFLogger;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: Proguard */
@SourceDebugExtension({"SMAP\nFileCacheManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileCacheManager.kt\ncom/appsflyer/internal/cache/FileCacheManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,335:1\n1855#2,2:336\n1855#2,2:339\n1855#2:341\n1856#2:344\n1855#2,2:346\n1855#2:348\n1856#2:351\n6442#3:338\n13579#3,2:349\n18#4:342\n26#5:343\n1#6:345\n*S KotlinDebug\n*F\n+ 1 FileCacheManager.kt\ncom/appsflyer/internal/cache/FileCacheManager\n*L\n106#1:336,2\n189#1:339,2\n207#1:341\n207#1:344\n263#1:346,2\n296#1:348\n296#1:351\n187#1:338\n299#1:349,2\n213#1:342\n213#1:343\n*E\n"})
/* loaded from: classes3.dex */
public final class AFc1vSDK implements AFc1tSDK {
    @NotNull
    private final AFc1hSDK AFAdRevenueData;
    @NotNull
    private final AFc1qSDK getMediationNetwork;
    @NotNull
    private final AFc1rSDK getRevenue = new AFc1rSDK(CollectionsKt.listOf((Object[]) new AFc1sSDK[]{new AFc1sSDK("ConversionsCache", CollectionsKt.listOf(AFe1pSDK.CONVERSION), 1), new AFc1sSDK("AttrCache", CollectionsKt.listOf(AFe1pSDK.ATTR), 1), new AFc1sSDK("OtherCache", CollectionsKt.listOf((Object[]) new AFe1pSDK[]{AFe1pSDK.LAUNCH, AFe1pSDK.INAPP, AFe1pSDK.ADREVENUE, AFe1pSDK.ARS_VALIDATE, AFe1pSDK.PURCHASE_VALIDATE, AFe1pSDK.MANUAL_PURCHASE_VALIDATION, AFe1pSDK.SDK_SERVICES}), 40)}));
    @NotNull
    private final Map<String, Integer> getMonetizationNetwork = MapsKt.mutableMapOf(TuplesKt.to("ConversionsCache", 0), TuplesKt.to("AttrCache", 0), TuplesKt.to("OtherCache", 0));

    public AFc1vSDK(@NotNull AFc1hSDK aFc1hSDK, @NotNull AFc1qSDK aFc1qSDK) {
        this.AFAdRevenueData = aFc1hSDK;
        this.getMediationNetwork = aFc1qSDK;
    }

    private static AFc1uSDK AFAdRevenueData(File file) {
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(file), Charset.defaultCharset());
            char[] cArr = new char[(int) file.length()];
            inputStreamReader.read(cArr);
            AFc1uSDK aFc1uSDK = new AFc1uSDK(cArr);
            aFc1uSDK.getMediationNetwork = file.getName();
            CloseableKt.closeFinally(inputStreamReader, null);
            return aFc1uSDK;
        } catch (Exception e) {
            AFLogger.INSTANCE.e(AFg1cSDK.CACHE, "Error while loading request from cache", e, false, false, true, false);
            return null;
        }
    }

    private final void getMonetizationNetwork() {
        for (AFc1sSDK aFc1sSDK : this.getRevenue.getMediationNetwork) {
            File file = new File(new File(this.AFAdRevenueData.getMonetizationNetwork.getFilesDir(), "AFRequestCache"), aFc1sSDK.AFAdRevenueData);
            int i = 0;
            if (!file.exists()) {
                file.mkdirs();
                this.getMonetizationNetwork.put(aFc1sSDK.AFAdRevenueData, 0);
            } else {
                Map<String, Integer> map = this.getMonetizationNetwork;
                String str = aFc1sSDK.AFAdRevenueData;
                File[] listFiles = file.listFiles();
                if (listFiles != null) {
                    i = listFiles.length;
                }
                map.put(str, Integer.valueOf(i));
            }
        }
    }

    @Override // com.appsflyer.internal.AFc1tSDK
    @WorkerThread
    @NotNull
    public final List<AFc1uSDK> getCurrencyIso4217Code() {
        int i;
        AFh1ySDK.i$default(AFLogger.INSTANCE, AFg1cSDK.CACHE, "Get Cached Requests", false, 4, null);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        try {
            if (!new File(this.AFAdRevenueData.getMonetizationNetwork.getFilesDir(), "AFRequestCache").exists()) {
                new File(this.AFAdRevenueData.getMonetizationNetwork.getFilesDir(), "AFRequestCache").mkdir();
            }
            Iterator<T> it = this.getRevenue.getMediationNetwork.iterator();
            while (true) {
                i = 0;
                if (!it.hasNext()) {
                    break;
                }
                File file = new File(new File(this.AFAdRevenueData.getMonetizationNetwork.getFilesDir(), "AFRequestCache"), ((AFc1sSDK) it.next()).AFAdRevenueData);
                if (!file.exists()) {
                    file.mkdirs();
                }
                File[] listFiles = file.listFiles();
                if (listFiles == null) {
                    listFiles = new File[0];
                }
                CollectionsKt.addAll(arrayList2, listFiles);
            }
            int size = arrayList2.size();
            while (i < size) {
                Object obj = arrayList2.get(i);
                i++;
                File file2 = (File) obj;
                AFLogger aFLogger = AFLogger.INSTANCE;
                AFg1cSDK aFg1cSDK = AFg1cSDK.CACHE;
                String name = file2.getName();
                AFh1ySDK.i$default(aFLogger, aFg1cSDK, "Found cached request: " + name, false, 4, null);
                AFc1uSDK AFAdRevenueData = AFAdRevenueData(file2);
                if (AFAdRevenueData != null) {
                    arrayList.add(AFAdRevenueData);
                }
            }
        } catch (Exception e) {
            AFh1ySDK.e$default(AFLogger.INSTANCE, AFg1cSDK.CACHE, "Could not get cached requests", e, false, false, false, false, 120, null);
        }
        AFLogger aFLogger2 = AFLogger.INSTANCE;
        AFg1cSDK aFg1cSDK2 = AFg1cSDK.CACHE;
        int size2 = arrayList.size();
        AFh1ySDK.i$default(aFLogger2, aFg1cSDK2, "Found " + size2 + " Cached Requests", false, 4, null);
        return arrayList;
    }

    @Override // com.appsflyer.internal.AFc1tSDK
    @WorkerThread
    public final void getMediationNetwork() {
        try {
            if (this.getMediationNetwork.getRevenue("AF_CACHE_VERSION", -1) != 2) {
                this.getMediationNetwork.getMediationNetwork("AF_CACHE_VERSION", 2);
                if (new File(this.AFAdRevenueData.getMonetizationNetwork.getFilesDir(), "AFRequestCache").exists()) {
                    FilesKt.deleteRecursively(new File(this.AFAdRevenueData.getMonetizationNetwork.getFilesDir(), "AFRequestCache"));
                    new File(this.AFAdRevenueData.getMonetizationNetwork.getFilesDir(), "AFRequestCache").mkdir();
                }
            } else if (!new File(this.AFAdRevenueData.getMonetizationNetwork.getFilesDir(), "AFRequestCache").exists()) {
                new File(this.AFAdRevenueData.getMonetizationNetwork.getFilesDir(), "AFRequestCache").mkdir();
            }
            getMonetizationNetwork();
        } catch (Exception e) {
            AFh1ySDK.e$default(AFLogger.INSTANCE, AFg1cSDK.CACHE, "Could not init cache", e, false, false, false, false, 120, null);
        }
    }

    @Override // com.appsflyer.internal.AFc1tSDK
    @WorkerThread
    public final void getRevenue() {
        try {
            if (!new File(this.AFAdRevenueData.getMonetizationNetwork.getFilesDir(), "AFRequestCache").exists()) {
                new File(this.AFAdRevenueData.getMonetizationNetwork.getFilesDir(), "AFRequestCache").mkdir();
                return;
            }
            for (AFc1sSDK aFc1sSDK : this.getRevenue.getMediationNetwork) {
                File[] listFiles = new File(new File(this.AFAdRevenueData.getMonetizationNetwork.getFilesDir(), "AFRequestCache"), aFc1sSDK.AFAdRevenueData).listFiles();
                if (listFiles != null) {
                    for (File file : listFiles) {
                        AFLogger aFLogger = AFLogger.INSTANCE;
                        AFg1cSDK aFg1cSDK = AFg1cSDK.CACHE;
                        AFh1ySDK.i$default(aFLogger, aFg1cSDK, "ClearCache : Found cached request " + file.getName(), false, 4, null);
                        AFh1ySDK.i$default(aFLogger, aFg1cSDK, "Deleting " + file.getName() + " from cache", false, 4, null);
                        file.delete();
                    }
                }
            }
            FilesKt.deleteRecursively(new File(this.AFAdRevenueData.getMonetizationNetwork.getFilesDir(), "AFRequestCache"));
            getMonetizationNetwork();
        } catch (Exception e) {
            AFh1ySDK.e$default(AFLogger.INSTANCE, AFg1cSDK.CACHE, "Could not clearCache request", e, false, false, false, false, 120, null);
        }
    }

    private final String AFAdRevenueData(AFe1pSDK aFe1pSDK) {
        String str;
        AFc1sSDK mediationNetwork = getMediationNetwork(aFe1pSDK);
        if (mediationNetwork == null || (str = mediationNetwork.AFAdRevenueData) == null) {
            throw new UnsupportedOperationException("Cache do not support this type of events");
        }
        return str;
    }

    private final boolean getMediationNetwork(File file) {
        try {
            file.delete();
            getMonetizationNetwork();
            return true;
        } catch (Exception e) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            AFg1cSDK aFg1cSDK = AFg1cSDK.CACHE;
            String name = file.getName();
            AFh1ySDK.e$default(aFLogger, aFg1cSDK, "Could not delete " + name + " from cache", e, false, false, false, false, 120, null);
            return false;
        }
    }

    private final AFc1sSDK getMediationNetwork(AFe1pSDK aFe1pSDK) {
        Object obj;
        Iterator<T> it = this.getRevenue.getMediationNetwork.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((AFc1sSDK) obj).getMediationNetwork.contains(aFe1pSDK)) {
                break;
            }
        }
        return (AFc1sSDK) obj;
    }

    @Override // com.appsflyer.internal.AFc1tSDK
    @WorkerThread
    public final boolean getRevenue(@Nullable String str) {
        if (str == null) {
            return false;
        }
        if (!new File(this.AFAdRevenueData.getMonetizationNetwork.getFilesDir(), "AFRequestCache").exists()) {
            new File(this.AFAdRevenueData.getMonetizationNetwork.getFilesDir(), "AFRequestCache").mkdir();
            return true;
        }
        AFLogger aFLogger = AFLogger.INSTANCE;
        AFg1cSDK aFg1cSDK = AFg1cSDK.CACHE;
        AFh1ySDK.i$default(aFLogger, aFg1cSDK, "Deleting " + str + " from cache", false, 4, null);
        for (AFc1sSDK aFc1sSDK : this.getRevenue.getMediationNetwork) {
            File file = new File(new File(new File(this.AFAdRevenueData.getMonetizationNetwork.getFilesDir(), "AFRequestCache"), aFc1sSDK.AFAdRevenueData), str);
            if (file.exists()) {
                return getMediationNetwork(file);
            }
        }
        return true;
    }

    @Override // com.appsflyer.internal.AFc1tSDK
    @WorkerThread
    @Nullable
    public final String getMediationNetwork(@NotNull AFc1uSDK aFc1uSDK) {
        Exception exc;
        File file;
        String str;
        List sortedWith;
        List<File> take;
        try {
            File file2 = new File(new File(this.AFAdRevenueData.getMonetizationNetwork.getFilesDir(), "AFRequestCache"), AFAdRevenueData(aFc1uSDK.AFAdRevenueData));
            if (!file2.exists()) {
                file2.mkdirs();
            }
            AFLogger aFLogger = AFLogger.INSTANCE;
            AFg1cSDK aFg1cSDK = AFg1cSDK.CACHE;
            AFh1ySDK.i$default(aFLogger, aFg1cSDK, "Caching request with URL: " + aFc1uSDK.getRevenue, false, 4, null);
            String valueOf = String.valueOf(System.currentTimeMillis());
            file = new File(file2, valueOf);
            try {
                file.createNewFile();
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file.getPath(), true), Charset.defaultCharset());
                outputStreamWriter.write("version=");
                outputStreamWriter.write(aFc1uSDK.getCurrencyIso4217Code);
                outputStreamWriter.write(10);
                outputStreamWriter.write("url=");
                outputStreamWriter.write(aFc1uSDK.getRevenue);
                outputStreamWriter.write(10);
                outputStreamWriter.write("data=");
                outputStreamWriter.write(Base64.encodeToString(aFc1uSDK.getMediationNetwork(), 2));
                outputStreamWriter.write(10);
                AFe1pSDK aFe1pSDK = aFc1uSDK.AFAdRevenueData;
                outputStreamWriter.write("type=");
                outputStreamWriter.write(aFe1pSDK.name());
                outputStreamWriter.write(10);
                Map<String, String> map = aFc1uSDK.getMonetizationNetwork;
                if (map != null && !map.isEmpty()) {
                    outputStreamWriter.write("headers=");
                    outputStreamWriter.write(Base64.encodeToString(new JSONObject(aFc1uSDK.getMonetizationNetwork).toString().getBytes(Charsets.UTF_8), 2));
                    outputStreamWriter.write(10);
                }
                outputStreamWriter.flush();
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(outputStreamWriter, null);
                AFh1ySDK.i$default(aFLogger, aFg1cSDK, "Cache request: done, cacheKey: " + valueOf, false, 4, null);
                AFe1pSDK aFe1pSDK2 = aFc1uSDK.AFAdRevenueData;
                AFc1sSDK mediationNetwork = getMediationNetwork(aFe1pSDK2);
                Integer valueOf2 = mediationNetwork != null ? Integer.valueOf(mediationNetwork.getMonetizationNetwork) : null;
                if (valueOf2 != null) {
                    int intValue = valueOf2.intValue();
                    Map<String, Integer> map2 = this.getMonetizationNetwork;
                    AFc1sSDK mediationNetwork2 = getMediationNetwork(aFe1pSDK2);
                    if (mediationNetwork2 != null && (str = mediationNetwork2.AFAdRevenueData) != null) {
                        Integer num = map2.get(str);
                        int intValue2 = num != null ? num.intValue() : 0;
                        if (intValue2 >= intValue) {
                            int i = (intValue2 + 1) - intValue;
                            AFh1ySDK.i$default(aFLogger, aFg1cSDK, "Cache overflown for type " + aFe1pSDK2 + ", removing " + i + " item(s)", false, 4, null);
                            File file3 = new File(new File(this.AFAdRevenueData.getMonetizationNetwork.getFilesDir(), "AFRequestCache"), AFAdRevenueData(aFe1pSDK2));
                            if (!file3.exists()) {
                                file3.mkdirs();
                            }
                            File[] listFiles = file3.listFiles();
                            if (listFiles != null && (sortedWith = ArraysKt.sortedWith(listFiles, new Comparator() { // from class: com.appsflyer.internal.AFc1vSDK.4
                                @Override // java.util.Comparator
                                public final int compare(T t, T t2) {
                                    return ComparisonsKt.compareValues(((File) t).getName(), ((File) t2).getName());
                                }
                            })) != null && (take = CollectionsKt.take(sortedWith, i)) != null) {
                                for (File file4 : take) {
                                    file4.delete();
                                    AFh1ySDK.i$default(AFLogger.INSTANCE, AFg1cSDK.CACHE, "Cache entry " + file4.getName() + " removed", false, 4, null);
                                }
                            }
                        }
                        getMonetizationNetwork();
                        return valueOf;
                    }
                    throw new UnsupportedOperationException("Cache do not support this type of events");
                }
                return valueOf;
            } catch (Exception e) {
                exc = e;
                if (file != null) {
                    file.delete();
                }
                AFh1ySDK.e$default(AFLogger.INSTANCE, AFg1cSDK.CACHE, "Could not cache request", exc, false, false, false, false, 120, null);
                return null;
            }
        } catch (Exception e2) {
            exc = e2;
            file = null;
        }
    }
}
