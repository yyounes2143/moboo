package androidx.core.provider;

import android.content.ContentProviderClient;
import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.RemoteException;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.collection.LruCache;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import androidx.tracing.Trace;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes.dex */
public class FontProvider {
    private static final LruCache<ProviderCacheKey, ProviderInfo> sProviderCache = new LruCache<>(2);
    private static final Comparator<byte[]> sByteArrayComparator = new Comparator() { // from class: androidx.core.provider.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return FontProvider.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((byte[]) obj, (byte[]) obj2);
        }
    };

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public interface ContentQueryWrapper {
        void close();

        Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal);
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class ContentQueryWrapperApi16Impl implements ContentQueryWrapper {
        private final ContentProviderClient mClient;

        public ContentQueryWrapperApi16Impl(Context context, Uri uri) {
            this.mClient = context.getContentResolver().acquireUnstableContentProviderClient(uri);
        }

        @Override // androidx.core.provider.FontProvider.ContentQueryWrapper
        public void close() {
            ContentProviderClient contentProviderClient = this.mClient;
            if (contentProviderClient != null) {
                contentProviderClient.release();
            }
        }

        @Override // androidx.core.provider.FontProvider.ContentQueryWrapper
        public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
            ContentProviderClient contentProviderClient = this.mClient;
            if (contentProviderClient == null) {
                return null;
            }
            try {
                return contentProviderClient.query(uri, strArr, str, strArr2, str2, cancellationSignal);
            } catch (RemoteException unused) {
                return null;
            }
        }
    }

    /* compiled from: Proguard */
    @RequiresApi(24)
    /* loaded from: classes.dex */
    public static class ContentQueryWrapperApi24Impl implements ContentQueryWrapper {
        private final ContentProviderClient mClient;

        public ContentQueryWrapperApi24Impl(Context context, Uri uri) {
            this.mClient = context.getContentResolver().acquireUnstableContentProviderClient(uri);
        }

        @Override // androidx.core.provider.FontProvider.ContentQueryWrapper
        public void close() {
            ContentProviderClient contentProviderClient = this.mClient;
            if (contentProviderClient != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(contentProviderClient);
            }
        }

        @Override // androidx.core.provider.FontProvider.ContentQueryWrapper
        public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
            ContentProviderClient contentProviderClient = this.mClient;
            if (contentProviderClient == null) {
                return null;
            }
            try {
                return contentProviderClient.query(uri, strArr, str, strArr2, str2, cancellationSignal);
            } catch (RemoteException unused) {
                return null;
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class ProviderCacheKey {
        String mAuthority;
        List<List<byte[]>> mCertificates;
        String mPackageName;

        public ProviderCacheKey(String str, String str2, List<List<byte[]>> list) {
            this.mAuthority = str;
            this.mPackageName = str2;
            this.mCertificates = list;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProviderCacheKey)) {
                return false;
            }
            ProviderCacheKey providerCacheKey = (ProviderCacheKey) obj;
            if (Objects.equals(this.mAuthority, providerCacheKey.mAuthority) && Objects.equals(this.mPackageName, providerCacheKey.mPackageName) && Objects.equals(this.mCertificates, providerCacheKey.mCertificates)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(this.mAuthority, this.mPackageName, this.mCertificates);
        }
    }

    private FontProvider() {
    }

    public static /* synthetic */ int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return bArr.length - bArr2.length;
        }
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            byte b2 = bArr2[i];
            if (b != b2) {
                return b - b2;
            }
        }
        return 0;
    }

    @VisibleForTesting
    public static void clearProviderCache() {
        sProviderCache.evictAll();
    }

    private static List<byte[]> convertToByteArrayList(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    private static boolean equalsByteArrayList(List<byte[]> list, List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (!Arrays.equals(list.get(i), list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    private static List<List<byte[]>> getCertificates(FontRequest fontRequest, Resources resources) {
        if (fontRequest.getCertificates() != null) {
            return fontRequest.getCertificates();
        }
        return FontResourcesParserCompat.readCerts(resources, fontRequest.getCertificatesArrayResId());
    }

    public static FontsContractCompat.FontFamilyResult getFontFamilyResult(Context context, List<FontRequest> list, CancellationSignal cancellationSignal) throws PackageManager.NameNotFoundException {
        Trace.beginSection("FontProvider.getFontFamilyResult");
        try {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                FontRequest fontRequest = list.get(i);
                ProviderInfo provider = getProvider(context.getPackageManager(), fontRequest, context.getResources());
                if (provider == null) {
                    return FontsContractCompat.FontFamilyResult.create(1, (FontsContractCompat.FontInfo[]) null);
                }
                arrayList.add(query(context, fontRequest, provider.authority, cancellationSignal));
            }
            return FontsContractCompat.FontFamilyResult.create(0, arrayList);
        } finally {
            Trace.endSection();
        }
    }

    @VisibleForTesting
    public static ProviderInfo getProvider(PackageManager packageManager, FontRequest fontRequest, Resources resources) throws PackageManager.NameNotFoundException {
        Trace.beginSection("FontProvider.getProvider");
        try {
            List<List<byte[]>> certificates = getCertificates(fontRequest, resources);
            ProviderCacheKey providerCacheKey = new ProviderCacheKey(fontRequest.getProviderAuthority(), fontRequest.getProviderPackage(), certificates);
            ProviderInfo providerInfo = sProviderCache.get(providerCacheKey);
            if (providerInfo != null) {
                return providerInfo;
            }
            String providerAuthority = fontRequest.getProviderAuthority();
            ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(providerAuthority, 0);
            if (resolveContentProvider != null) {
                if (resolveContentProvider.packageName.equals(fontRequest.getProviderPackage())) {
                    List<byte[]> convertToByteArrayList = convertToByteArrayList(packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures);
                    Collections.sort(convertToByteArrayList, sByteArrayComparator);
                    for (int i = 0; i < certificates.size(); i++) {
                        ArrayList arrayList = new ArrayList(certificates.get(i));
                        Collections.sort(arrayList, sByteArrayComparator);
                        if (equalsByteArrayList(convertToByteArrayList, arrayList)) {
                            sProviderCache.put(providerCacheKey, resolveContentProvider);
                            return resolveContentProvider;
                        }
                    }
                    Trace.endSection();
                    return null;
                }
                throw new PackageManager.NameNotFoundException("Found content provider " + providerAuthority + ", but package was not " + fontRequest.getProviderPackage());
            }
            throw new PackageManager.NameNotFoundException("No package found for authority: " + providerAuthority);
        } finally {
            Trace.endSection();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v11 */
    /* JADX WARN: Type inference failed for: r16v2, types: [androidx.core.provider.FontProvider$ContentQueryWrapper] */
    @VisibleForTesting
    public static FontsContractCompat.FontInfo[] query(Context context, FontRequest fontRequest, String str, CancellationSignal cancellationSignal) {
        ?? r16;
        String[] strArr;
        ContentQueryWrapper contentQueryWrapper;
        int i;
        int i2;
        ContentQueryWrapper contentQueryWrapper2;
        Uri withAppendedId;
        int i3;
        boolean z;
        Trace.beginSection("FontProvider.query");
        try {
            ArrayList arrayList = new ArrayList();
            Uri build = new Uri.Builder().scheme("content").authority(str).build();
            Uri build2 = new Uri.Builder().scheme("content").authority(str).appendPath("file").build();
            ContentQueryWrapper Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, build);
            Cursor cursor = null;
            try {
                strArr = new String[]{"_id", FontsContractCompat.Columns.FILE_ID, FontsContractCompat.Columns.TTC_INDEX, FontsContractCompat.Columns.VARIATION_SETTINGS, FontsContractCompat.Columns.WEIGHT, FontsContractCompat.Columns.ITALIC, FontsContractCompat.Columns.RESULT_CODE};
                Trace.beginSection("ContentQueryWrapper.query");
            } catch (Throwable th) {
                th = th;
                r16 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            try {
                Cursor query = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.query(build, strArr, "query = ?", new String[]{fontRequest.getQuery()}, null, cancellationSignal);
                if (query != null && query.getCount() > 0) {
                    int columnIndex = query.getColumnIndex(FontsContractCompat.Columns.RESULT_CODE);
                    ArrayList arrayList2 = new ArrayList();
                    int columnIndex2 = query.getColumnIndex("_id");
                    int columnIndex3 = query.getColumnIndex(FontsContractCompat.Columns.FILE_ID);
                    int columnIndex4 = query.getColumnIndex(FontsContractCompat.Columns.TTC_INDEX);
                    int columnIndex5 = query.getColumnIndex(FontsContractCompat.Columns.WEIGHT);
                    int columnIndex6 = query.getColumnIndex(FontsContractCompat.Columns.ITALIC);
                    while (query.moveToNext()) {
                        if (columnIndex != -1) {
                            i = query.getInt(columnIndex);
                        } else {
                            i = 0;
                        }
                        if (columnIndex4 != -1) {
                            i2 = query.getInt(columnIndex4);
                        } else {
                            i2 = 0;
                        }
                        if (columnIndex3 == -1) {
                            context = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                            withAppendedId = ContentUris.withAppendedId(build, query.getLong(columnIndex2));
                            contentQueryWrapper2 = context;
                        } else {
                            contentQueryWrapper2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                            withAppendedId = ContentUris.withAppendedId(build2, query.getLong(columnIndex3));
                        }
                        if (columnIndex5 != -1) {
                            i3 = query.getInt(columnIndex5);
                        } else {
                            i3 = 400;
                        }
                        if (columnIndex6 != -1) {
                            z = true;
                            if (query.getInt(columnIndex6) == 1) {
                                arrayList2.add(FontsContractCompat.FontInfo.create(withAppendedId, i2, i3, z, i));
                                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = contentQueryWrapper2;
                            }
                        }
                        z = false;
                        arrayList2.add(FontsContractCompat.FontInfo.create(withAppendedId, i2, i3, z, i));
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = contentQueryWrapper2;
                    }
                    contentQueryWrapper = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    arrayList = arrayList2;
                } else {
                    contentQueryWrapper = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                }
                if (query != null) {
                    query.close();
                }
                contentQueryWrapper.close();
                return (FontsContractCompat.FontInfo[]) arrayList.toArray(new FontsContractCompat.FontInfo[0]);
            } catch (Throwable th2) {
                th = th2;
                r16 = context;
                if (0 != 0) {
                    cursor.close();
                }
                r16.close();
                throw th;
            }
        } finally {
            Trace.endSection();
        }
    }
}
