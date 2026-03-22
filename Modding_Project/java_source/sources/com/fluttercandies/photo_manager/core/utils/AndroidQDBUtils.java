package com.fluttercandies.photo_manager.core.utils;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.fluttercandies.photo_manager.core.cache.ScopedCache;
import com.fluttercandies.photo_manager.core.entity.AssetEntity;
import com.fluttercandies.photo_manager.core.entity.AssetPathEntity;
import com.fluttercandies.photo_manager.core.entity.filter.FilterOption;
import com.fluttercandies.photo_manager.core.utils.IDBUtils;
import com.fluttercandies.photo_manager.util.LogUtils;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@RequiresApi(29)
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0011\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0012\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JJ\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062!\u0010\r\u001a\u001d\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u0005\u0012\u0004\u0012\u00020\f0\tH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J!\u0010\u001b\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ-\u0010\"\u001a\b\u0012\u0004\u0012\u00020!0 2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\"\u0010#J-\u0010$\u001a\b\u0012\u0004\u0012\u00020!0 2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b$\u0010#J)\u0010&\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u001eH\u0016¢\u0006\u0004\b&\u0010'JE\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00100 2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010(\u001a\u00020\u00192\u0006\u0010)\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b+\u0010,JE\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00100 2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b.\u0010,J\u0015\u00100\u001a\b\u0012\u0004\u0012\u00020\u00190/H\u0016¢\u0006\u0004\b0\u00101J)\u00104\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u00102\u001a\u00020\u00192\u0006\u00103\u001a\u00020\u0012H\u0016¢\u0006\u0004\b4\u00105J1\u00107\u001a\u0004\u0018\u00010!2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010(\u001a\u00020\u00192\u0006\u00106\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b7\u00108J!\u0010:\u001a\u0004\u0018\u0001092\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u00102\u001a\u00020\u0019H\u0016¢\u0006\u0004\b:\u0010;J'\u0010=\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u00102\u001a\u00020\u00192\u0006\u0010<\u001a\u00020\u0012H\u0016¢\u0006\u0004\b=\u0010>J'\u0010A\u001a\u00020@2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010?\u001a\u00020\u0012H\u0016¢\u0006\u0004\bA\u0010BJ'\u0010D\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010C\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\bD\u0010EJ'\u0010F\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010C\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\bF\u0010EJ\u0017\u0010G\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\bG\u0010HJ/\u0010J\u001a\u0012\u0012\u0004\u0012\u00020\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0018\u00010I2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010C\u001a\u00020\u0019H\u0016¢\u0006\u0004\bJ\u0010KJ\u0017\u0010L\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\bL\u0010MR\u0014\u0010Q\u001a\u00020N8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bO\u0010PR\u0014\u0010T\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bR\u0010SR\u0014\u0010V\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bU\u0010SR\u0014\u0010Z\u001a\u00020W8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bX\u0010Y¨\u0006["}, d2 = {"Lcom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils;", "Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;", "<init>", "()V", "Landroid/database/Cursor;", "cursor", "", "start", "pageSize", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "", "block", "Kkkkkkkkkkkkkkkkkk", "(Landroid/database/Cursor;IILkotlin/jvm/functions/Function1;)V", "Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;", "asset", "", "isOrigin", "Landroid/net/Uri;", "Kkkkkkkkk", "(Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;Z)Landroid/net/Uri;", "Landroid/content/Context;", "context", "", "galleryId", "Kkkkkkkkkkkkkk", "(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;", "requestType", "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;", "option", "", "Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;", "Wwwwwwww", "(Landroid/content/Context;ILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "filterOption", "Kkkkkkkkkkkk", "(IILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/lang/String;", "pathId", "page", "size", "Wwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;IIILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;", "end", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "", UserMetadata.KEYDATA_FILENAME, "()[Ljava/lang/String;", "id", "checkIfExists", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Z)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;", "type", "Wwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;ILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;", "Landroidx/exifinterface/media/ExifInterface;", "Www", "(Landroid/content/Context;Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface;", "origin", "Wwwww", "(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;", "needLocationPermission", "", "Kkkkkkkkkkkkkkkkkkkkkkkkkk", "(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;Z)[B", "assetId", "Wwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;", "Kkkkkkkkkkkkkkkkkkkkkkkkk", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Z", "Lkotlin/Pair;", "Kkkkkkkkkkkkk", "(Landroid/content/Context;Ljava/lang/String;)Lkotlin/Pair;", "Wwwwwwwwwwww", "(Landroid/content/Context;)V", "Lcom/fluttercandies/photo_manager/core/cache/ScopedCache;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/fluttercandies/photo_manager/core/cache/ScopedCache;", "scopedCache", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "shouldUseScopedCache", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "isQStorageLegacy", "Ljava/util/concurrent/locks/ReentrantLock;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/locks/ReentrantLock;", "deleteLock", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAndroidQDBUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidQDBUtils.kt\ncom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,514:1\n37#2:515\n36#2,3:516\n37#2:521\n36#2,3:522\n37#2:525\n36#2,3:526\n37#2:529\n36#2,3:530\n37#2:533\n36#2,3:534\n37#2:537\n36#2,3:538\n37#2:542\n36#2,3:543\n37#2:550\n36#2,3:551\n37#2:554\n36#2,3:555\n216#3,2:519\n1#4:541\n11228#5:546\n11563#5,3:547\n*S KotlinDebug\n*F\n+ 1 AndroidQDBUtils.kt\ncom/fluttercandies/photo_manager/core/utils/AndroidQDBUtils\n*L\n51#1:515\n51#1:516,3\n97#1:521\n97#1:522,3\n161#1:525\n161#1:526,3\n201#1:529\n201#1:530,3\n219#1:533\n219#1:534,3\n263#1:537\n263#1:538,3\n349#1:542\n349#1:543,3\n430#1:550\n430#1:551,3\n466#1:554\n466#1:555,3\n69#1:519,2\n429#1:546\n429#1:547,3\n*E\n"})
/* loaded from: classes4.dex */
public final class AndroidQDBUtils implements IDBUtils {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ReentrantLock f7458Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final boolean f7459Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final boolean f7460Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final AndroidQDBUtils INSTANCE = new AndroidQDBUtils();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ScopedCache f7461Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ScopedCache();

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    static {
        /*
            com.fluttercandies.photo_manager.core.utils.AndroidQDBUtils r0 = new com.fluttercandies.photo_manager.core.utils.AndroidQDBUtils
            r0.<init>()
            com.fluttercandies.photo_manager.core.utils.AndroidQDBUtils.INSTANCE = r0
            com.fluttercandies.photo_manager.core.cache.ScopedCache r0 = new com.fluttercandies.photo_manager.core.cache.ScopedCache
            r0.<init>()
            com.fluttercandies.photo_manager.core.utils.AndroidQDBUtils.f7461Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 0
            r2 = 1
            r3 = 29
            if (r0 != r3) goto L1e
            boolean r4 = com.baseflow.permissionhandler.Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            if (r4 != 0) goto L1e
            r4 = r2
            goto L1f
        L1e:
            r4 = r1
        L1f:
            com.fluttercandies.photo_manager.core.utils.AndroidQDBUtils.f7460Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r4
            if (r0 != r3) goto L2a
            boolean r0 = com.baseflow.permissionhandler.Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            if (r0 == 0) goto L2a
            r1 = r2
        L2a:
            com.fluttercandies.photo_manager.core.utils.AndroidQDBUtils.f7459Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r1
            java.util.concurrent.locks.ReentrantLock r0 = new java.util.concurrent.locks.ReentrantLock
            r0.<init>()
            com.fluttercandies.photo_manager.core.utils.AndroidQDBUtils.f7458Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fluttercandies.photo_manager.core.utils.AndroidQDBUtils.<clinit>():void");
    }

    public static final CharSequence Kkkkkkk(String str) {
        return "?";
    }

    public static /* synthetic */ Uri Kkkkkkkk(AndroidQDBUtils androidQDBUtils, AssetEntity assetEntity, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return androidQDBUtils.Kkkkkkkkk(assetEntity, z);
    }

    public static final Unit Kkkkkkkkkkkkkkkk(Context context, ArrayList arrayList, Cursor cursor) {
        AssetEntity Kkkkkkkkkkkkkkkkkkk2 = IDBUtils.DefaultImpls.Kkkkkkkkkkkkkkkkkkk(INSTANCE, cursor, context, false, false, 2, null);
        if (Kkkkkkkkkkkkkkkkkkk2 != null) {
            arrayList.add(Kkkkkkkkkkkkkkkkkkk2);
        }
        return Unit.INSTANCE;
    }

    public static final Unit Kkkkkkkkkkkkkkkkk(Context context, ArrayList arrayList, Cursor cursor) {
        AssetEntity Kkkkkkkkkkkkkkkkkkk2 = IDBUtils.DefaultImpls.Kkkkkkkkkkkkkkkkkkk(INSTANCE, cursor, context, false, false, 2, null);
        if (Kkkkkkkkkkkkkkkkkkk2 != null) {
            arrayList.add(Kkkkkkkkkkkkkkkkkkk2);
        }
        return Unit.INSTANCE;
    }

    public final Uri Kkkkkkkkk(AssetEntity assetEntity, boolean z) {
        return Wwwwwwwwwwwwwwww(assetEntity.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), assetEntity.Wwwwwwwwwwwwwwwwwwwwww(), z);
    }

    public int Kkkkkkkkkk(int i) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwww(this, i);
    }

    @Nullable
    public String Kkkkkkkkkkk(@NotNull Cursor cursor, @NotNull String str) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwww(this, cursor, str);
    }

    @Nullable
    public String Kkkkkkkkkkkk(int i, int i2, @NotNull FilterOption filterOption) {
        if (f7459Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwww(this, i, i2, filterOption);
        }
        return filterOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Nullable
    public Pair<String, String> Kkkkkkkkkkkkk(@NotNull Context context, @NotNull String str) {
        Cursor Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwww(context.getContentResolver(), Wwwwwwwwwwwwwwwwwww(), new String[]{"bucket_id", "relative_path"}, "_id = ?", new String[]{str}, null);
        Cursor cursor = Wwwwwwwwwwwwwwwww2;
        try {
            Cursor cursor2 = cursor;
            if (!Wwwwwwwwwwwwwwwww2.moveToNext()) {
                CloseableKt.closeFinally(cursor, null);
                return null;
            }
            Pair<String, String> pair = new Pair<>(Wwwwwwwwwwwwwwwww2.getString(0), new File(Wwwwwwwwwwwwwwwww2.getString(1)).getParent());
            CloseableKt.closeFinally(cursor, null);
            return pair;
        } finally {
        }
    }

    public final String Kkkkkkkkkkkkkk(Context context, String str) {
        Cursor Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwww(context.getContentResolver(), Wwwwwwwwwwwwwwwwwww(), new String[]{"bucket_id", "relative_path"}, "bucket_id = ?", new String[]{str}, null);
        Cursor cursor = Wwwwwwwwwwwwwwwww2;
        try {
            Cursor cursor2 = cursor;
            if (!Wwwwwwwwwwwwwwwww2.moveToNext()) {
                CloseableKt.closeFinally(cursor, null);
                return null;
            }
            String string = Wwwwwwwwwwwwwwwww2.getString(1);
            CloseableKt.closeFinally(cursor, null);
            return string;
        } finally {
        }
    }

    @NotNull
    public String Kkkkkkkkkkkkkkk() {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwww(this);
    }

    public final void Kkkkkkkkkkkkkkkkkk(Cursor cursor, int i, int i2, Function1<? super Cursor, Unit> function1) {
        if (!f7459Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            cursor.moveToPosition(i - 1);
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (cursor.moveToNext()) {
                function1.invoke(cursor);
            }
        }
    }

    public int Kkkkkkkkkkkkkkkkkkk(int i) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, i);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public String Kkkkkkkkkkkkkkkkkkkkkkk(@NotNull Context context, long j, int i) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwww(this, context, j, i);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public Void Kkkkkkkkkkkkkkkkkkkkkkkk(@NotNull String str) throws RuntimeException {
        return IDBUtils.DefaultImpls.Kkkkkkkkkkkkkkkkkkkkk(this, str);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public AssetEntity Kkkkkkkkkkkkkkkkkkkkkkkkk(@NotNull Context context, @NotNull String str, @NotNull String str2) {
        Pair<String, String> Kkkkkkkkkkkkk2 = Kkkkkkkkkkkkk(context, str);
        if (Kkkkkkkkkkkkk2 != null) {
            if (!Intrinsics.areEqual(str2, Kkkkkkkkkkkkk2.component1())) {
                ContentResolver contentResolver = context.getContentResolver();
                String Kkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkk(context, str2);
                ContentValues contentValues = new ContentValues();
                contentValues.put("relative_path", Kkkkkkkkkkkkkk2);
                if (contentResolver.update(Wwwwwwwwwwwwwwwwwww(), contentValues, Kkkkkkkkkkkkkkk(), new String[]{str}) > 0) {
                    AssetEntity Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this, context, str, false, 4, null);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        return Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    }
                    Wwww(str);
                    throw new KotlinNothingValueException();
                }
                Kkkkkkkkkkkkkkkkkkkkkkkk("Cannot update " + str + " relativePath");
                throw new KotlinNothingValueException();
            }
            Kkkkkkkkkkkkkkkkkkkkkkkk("No move required, because the target gallery is the same as the current one.");
            throw new KotlinNothingValueException();
        }
        Kkkkkkkkkkkkkkkkkkkkkkkk("Cannot get gallery id of " + str);
        throw new KotlinNothingValueException();
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public byte[] Kkkkkkkkkkkkkkkkkkkkkkkkkk(@NotNull Context context, @NotNull AssetEntity assetEntity, boolean z) {
        InputStream openInputStream = context.getContentResolver().openInputStream(Kkkkkkkkk(assetEntity, z));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (openInputStream != null) {
            try {
                byteArrayOutputStream.write(ByteStreamsKt.readBytes(openInputStream));
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(openInputStream, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(byteArrayOutputStream, th);
                    throw th2;
                }
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = assetEntity.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        int length = byteArray.length;
        LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("The asset " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + " origin byte length : " + length);
        CloseableKt.closeFinally(byteArrayOutputStream, null);
        return byteArray;
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @Nullable
    public ExifInterface Www(@NotNull Context context, @NotNull String str) {
        Uri requireOriginal;
        try {
            AssetEntity Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this, context, str, false, 4, null);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                requireOriginal = MediaStore.setRequireOriginal(Kkkkkkkk(this, Wwwwwwwwwwwwwwwwwwwwwwwwwww2, false, 2, null));
                InputStream openInputStream = context.getContentResolver().openInputStream(requireOriginal);
                if (openInputStream == null) {
                    return null;
                }
                return new ExifInterface(openInputStream);
            }
            return null;
        } catch (Exception e) {
            LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e);
            return null;
        }
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public Void Wwww(@NotNull Object obj) throws RuntimeException {
        return IDBUtils.DefaultImpls.Kkkkkkkkkkkkkkkkkkkkkk(this, obj);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public String Wwwww(@NotNull Context context, @NotNull String str, boolean z) {
        AssetEntity Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this, context, str, false, 4, null);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            if (f7460Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return f7461Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, Wwwwwwwwwwwwwwwwwwwwwwwwwww2, z).getAbsolutePath();
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww();
        }
        Wwww(str);
        throw new KotlinNothingValueException();
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    public int Wwwwww(int i) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwww(this, i);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public String Wwwwwww(@NotNull Cursor cursor, @NotNull String str) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwww(this, cursor, str);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public List<AssetPathEntity> Wwwwwwww(@NotNull Context context, int i, @NotNull FilterOption filterOption) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FilterOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(filterOption, i, arrayList2, false, 4, null);
        Cursor Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwww(context.getContentResolver(), Wwwwwwwwwwwwwwwwwww(), IDBUtils.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), "bucket_id IS NOT NULL " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, (String[]) arrayList2.toArray(new String[0]), filterOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        Cursor cursor = Wwwwwwwwwwwwwwwww2;
        try {
            Cursor cursor2 = cursor;
            LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(cursor2, "bucket_id");
            while (cursor2.moveToNext()) {
                AndroidQDBUtils androidQDBUtils = INSTANCE;
                String Wwwwwww2 = androidQDBUtils.Wwwwwww(cursor2, "bucket_id");
                if (hashMap.containsKey(Wwwwwww2)) {
                    hashMap2.put(Wwwwwww2, Integer.valueOf(((Number) hashMap2.get(Wwwwwww2)).intValue() + 1));
                } else {
                    hashMap.put(Wwwwwww2, androidQDBUtils.Wwwwwww(cursor2, "bucket_display_name"));
                    hashMap2.put(Wwwwwww2, 1);
                }
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(cursor, null);
            for (Map.Entry entry : hashMap.entrySet()) {
                String str = (String) entry.getKey();
                AssetPathEntity assetPathEntity = new AssetPathEntity(str, (String) entry.getValue(), ((Number) hashMap2.get(str)).intValue(), i, false, null, 32, null);
                if (filterOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, assetPathEntity);
                }
                arrayList.add(assetPathEntity);
            }
            return arrayList;
        } finally {
        }
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public List<AssetEntity> Wwwwwwwww(@NotNull final Context context, @NotNull String str, int i, int i2, int i3, @NotNull FilterOption filterOption) {
        boolean z;
        String str2;
        if (str.length() == 0) {
            z = true;
        } else {
            z = false;
        }
        final ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (!z) {
            arrayList2.add(str);
        }
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FilterOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(filterOption, i3, arrayList2, false, 4, null);
        if (z) {
            str2 = "bucket_id IS NOT NULL " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        } else {
            str2 = "bucket_id = ? " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        String str3 = str2;
        int i4 = i * i2;
        Cursor Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwww(context.getContentResolver(), Wwwwwwwwwwwwwwwwwww(), keys(), str3, (String[]) arrayList2.toArray(new String[0]), Kkkkkkkkkkkk(i4, i2, filterOption));
        try {
            INSTANCE.Kkkkkkkkkkkkkkkkkk(Wwwwwwwwwwwwwwwww2, i4, i2, new Function1() { // from class: com.fluttercandies.photo_manager.core.utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit Kkkkkkkkkkkkkkkkk2;
                    Kkkkkkkkkkkkkkkkk2 = AndroidQDBUtils.Kkkkkkkkkkkkkkkkk(context, arrayList, (Cursor) obj);
                    return Kkkkkkkkkkkkkkkkk2;
                }
            });
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(Wwwwwwwwwwwwwwwww2, null);
            return arrayList;
        } finally {
        }
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    public void Wwwwwwwwww(@NotNull Context context, @NotNull String str) {
        IDBUtils.DefaultImpls.Wwwww(this, context, str);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    public long Wwwwwwwwwww(@NotNull Cursor cursor, @NotNull String str) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwww(this, cursor, str);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    public void Wwwwwwwwwwww(@NotNull Context context) {
        IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, context);
        f7461Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    public int Wwwwwwwwwwwww(@NotNull Context context, @NotNull FilterOption filterOption, int i, @NotNull String str) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this, context, filterOption, i, str);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public List<String> Wwwwwwwwwwwwww(@NotNull Context context) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwww(this, context);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public AssetEntity Wwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @Nullable Integer num) {
        return IDBUtils.DefaultImpls.Kkkkkkkkkkkkkkkkkkkkkkkk(this, context, str, str2, str3, str4, num);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public Uri Wwwwwwwwwwwwwwww(long j, int i, boolean z) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwww(this, j, i, z);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public Cursor Wwwwwwwwwwwwwwwww(@NotNull ContentResolver contentResolver, @NotNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        return IDBUtils.DefaultImpls.Wwwwwww(this, contentResolver, uri, strArr, str, strArr2, str2);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @Nullable
    public AssetPathEntity Wwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, int i, @NotNull FilterOption filterOption) {
        String str2;
        String str3 = "";
        boolean areEqual = Intrinsics.areEqual(str, "");
        ArrayList arrayList = new ArrayList();
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FilterOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(filterOption, i, arrayList, false, 4, null);
        if (areEqual) {
            str2 = "";
        } else {
            arrayList.add(str);
            str2 = "AND bucket_id = ?";
        }
        Cursor Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwww(context.getContentResolver(), Wwwwwwwwwwwwwwwwwww(), IDBUtils.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), "bucket_id IS NOT NULL " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + " " + str2, (String[]) arrayList.toArray(new String[0]), null);
        try {
            Cursor cursor = Wwwwwwwwwwwwwwwww2;
            if (cursor.moveToNext()) {
                String string = cursor.getString(1);
                if (string != null) {
                    str3 = string;
                }
                int count = cursor.getCount();
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(Wwwwwwwwwwwwwwwww2, null);
                return new AssetPathEntity(str, str3, count, i, areEqual, null, 32, null);
            }
            CloseableKt.closeFinally(Wwwwwwwwwwwwwwwww2, null);
            return null;
        } finally {
        }
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public Uri Wwwwwwwwwwwwwwwwwww() {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public List<AssetEntity> Wwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull FilterOption filterOption, int i, int i2, int i3) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwww(this, context, filterOption, i, i2, i3);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public AssetEntity Wwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, @NotNull String str2) {
        Pair<String, String> Kkkkkkkkkkkkk2 = Kkkkkkkkkkkkk(context, str);
        if (Kkkkkkkkkkkkk2 != null) {
            if (!Intrinsics.areEqual(str2, Kkkkkkkkkkkkk2.component1())) {
                AssetEntity Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this, context, str, false, 4, null);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    ArrayList arrayListOf = CollectionsKt.arrayListOf("_display_name", CampaignEx.JSON_KEY_TITLE, "date_added", "date_modified", "datetaken", TypedValues.TransitionType.S_DURATION, "width", "height", "orientation");
                    int Kkkkkkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwww());
                    if (Kkkkkkkkkkkkkkkkkkk2 == 3) {
                        arrayListOf.add("description");
                    }
                    ContentResolver contentResolver = context.getContentResolver();
                    Cursor Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwww(contentResolver, Wwwwwwwwwwwwwwwwwww(), (String[]) ArraysKt.plus(arrayListOf.toArray(new String[0]), (Object[]) new String[]{"relative_path"}), Kkkkkkkkkkkkkkk(), new String[]{str}, null);
                    if (Wwwwwwwwwwwwwwwww2.moveToNext()) {
                        Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = MediaStoreUtils.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Kkkkkkkkkkkkkkkkkkk2);
                        String Kkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkk(context, str2);
                        ContentValues contentValues = new ContentValues();
                        Iterator it = arrayListOf.iterator();
                        while (it.hasNext()) {
                            String str3 = (String) it.next();
                            contentValues.put(str3, INSTANCE.Wwwwwww(Wwwwwwwwwwwwwwwww2, str3));
                        }
                        contentValues.put("media_type", Integer.valueOf(Kkkkkkkkkkkkkkkkkkk2));
                        contentValues.put("relative_path", Kkkkkkkkkkkkkk2);
                        Uri insert = contentResolver.insert(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, contentValues);
                        if (insert != null) {
                            OutputStream openOutputStream = contentResolver.openOutputStream(insert);
                            if (openOutputStream != null) {
                                Uri Kkkkkkkkk2 = Kkkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwww2, true);
                                InputStream openInputStream = contentResolver.openInputStream(Kkkkkkkkk2);
                                if (openInputStream != null) {
                                    try {
                                        ByteStreamsKt.copyTo$default(openInputStream, openOutputStream, 0, 2, null);
                                        CloseableKt.closeFinally(openOutputStream, null);
                                        CloseableKt.closeFinally(openInputStream, null);
                                        Wwwwwwwwwwwwwwwww2.close();
                                        String lastPathSegment = insert.getLastPathSegment();
                                        if (lastPathSegment != null) {
                                            AssetEntity Wwwwwwwwwwwwwwwwwwwwwwwwwww3 = IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this, context, lastPathSegment, false, 4, null);
                                            if (Wwwwwwwwwwwwwwwwwwwwwwwwwww3 != null) {
                                                return Wwwwwwwwwwwwwwwwwwwwwwwwwww3;
                                            }
                                            Wwww(str);
                                            throw new KotlinNothingValueException();
                                        }
                                        Kkkkkkkkkkkkkkkkkkkkkkkk("Cannot open output stream for " + insert + ".");
                                        throw new KotlinNothingValueException();
                                    } finally {
                                    }
                                } else {
                                    Kkkkkkkkkkkkkkkkkkkkkkkk("Cannot open input stream for " + Kkkkkkkkk2);
                                    throw new KotlinNothingValueException();
                                }
                            } else {
                                Kkkkkkkkkkkkkkkkkkkkkkkk("Cannot open output stream for " + insert + ".");
                                throw new KotlinNothingValueException();
                            }
                        } else {
                            Kkkkkkkkkkkkkkkkkkkkkkkk("Cannot insert new asset.");
                            throw new KotlinNothingValueException();
                        }
                    } else {
                        Kkkkkkkkkkkkkkkkkkkkkkkk("Cannot find asset.");
                        throw new KotlinNothingValueException();
                    }
                } else {
                    Wwww(str);
                    throw new KotlinNothingValueException();
                }
            } else {
                Kkkkkkkkkkkkkkkkkkkkkkkk("No copy required, because the target gallery is the same as the current one.");
                throw new KotlinNothingValueException();
            }
        } else {
            Kkkkkkkkkkkkkkkkkkkkkkkk("Cannot get gallery id of " + str);
            throw new KotlinNothingValueException();
        }
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public List<String> Wwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull List<String> list) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwww(this, context, list);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public AssetEntity Wwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @Nullable Integer num) {
        return IDBUtils.DefaultImpls.Wwww(this, context, str, str2, str3, str4, num);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    public int Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull Cursor cursor, @NotNull String str) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwww(this, cursor, str);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @Nullable
    public AssetEntity Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Cursor cursor, @NotNull Context context, boolean z, boolean z2) {
        return IDBUtils.DefaultImpls.Kkkkkkkkkkkkkkkkkkkk(this, cursor, context, z, z2);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public List<AssetPathEntity> Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, int i, @NotNull FilterOption filterOption) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FilterOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(filterOption, i, arrayList2, false, 4, null);
        Cursor Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwww(context.getContentResolver(), Wwwwwwwwwwwwwwwwwww(), IDBUtils.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), "bucket_id IS NOT NULL " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, (String[]) arrayList2.toArray(new String[0]), filterOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        try {
            arrayList.add(new AssetPathEntity("isAll", "Recent", Wwwwwwwwwwwwwwwww2.getCount(), i, true, null, 32, null));
            CloseableKt.closeFinally(Wwwwwwwwwwwwwwwww2, null);
            return arrayList;
        } finally {
        }
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public List<AssetEntity> Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final Context context, @NotNull String str, int i, int i2, int i3, @NotNull FilterOption filterOption) {
        boolean z;
        String str2;
        if (str.length() == 0) {
            z = true;
        } else {
            z = false;
        }
        final ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (!z) {
            arrayList2.add(str);
        }
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FilterOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(filterOption, i3, arrayList2, false, 4, null);
        if (z) {
            str2 = "bucket_id IS NOT NULL " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        } else {
            str2 = "bucket_id = ? " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        String str3 = str2;
        int i4 = i2 - i;
        Cursor Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwww(context.getContentResolver(), Wwwwwwwwwwwwwwwwwww(), keys(), str3, (String[]) arrayList2.toArray(new String[0]), Kkkkkkkkkkkk(i, i4, filterOption));
        try {
            INSTANCE.Kkkkkkkkkkkkkkkkkk(Wwwwwwwwwwwwwwwww2, i, i4, new Function1() { // from class: com.fluttercandies.photo_manager.core.utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit Kkkkkkkkkkkkkkkk2;
                    Kkkkkkkkkkkkkkkk2 = AndroidQDBUtils.Kkkkkkkkkkkkkkkk(context, arrayList, (Cursor) obj);
                    return Kkkkkkkkkkkkkkkk2;
                }
            });
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(Wwwwwwwwwwwwwwwww2, null);
            return arrayList;
        } finally {
        }
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public AssetEntity Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull byte[] bArr, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @Nullable Integer num) {
        return IDBUtils.DefaultImpls.Www(this, context, bArr, str, str2, str3, str4, num);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        ReentrantLock reentrantLock = f7458Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (reentrantLock.isLocked()) {
            return false;
        }
        reentrantLock.lock();
        try {
            ArrayList arrayList = new ArrayList();
            ContentResolver contentResolver = context.getContentResolver();
            AndroidQDBUtils androidQDBUtils = INSTANCE;
            Uri Wwwwwwwwwwwwwwwwwww2 = androidQDBUtils.Wwwwwwwwwwwwwwwwwww();
            String[] strArr = {"_id", "media_type", "_data"};
            Integer[] numArr = {2, 3, 1};
            ArrayList arrayList2 = new ArrayList(3);
            int i = 0;
            for (int i2 = 3; i < i2; i2 = 3) {
                arrayList2.add(String.valueOf(numArr[i].intValue()));
                i++;
            }
            Cursor Wwwwwwwwwwwwwwwww2 = androidQDBUtils.Wwwwwwwwwwwwwwwww(contentResolver, Wwwwwwwwwwwwwwwwwww2, strArr, "media_type in ( ?,?,? )", (String[]) arrayList2.toArray(new String[0]), null);
            Cursor cursor = Wwwwwwwwwwwwwwwww2;
            while (cursor.moveToNext()) {
                AndroidQDBUtils androidQDBUtils2 = INSTANCE;
                String Wwwwwww2 = androidQDBUtils2.Wwwwwww(cursor, "_id");
                int Wwwwwwwwwwwwwwwwwwwwwwww2 = androidQDBUtils2.Wwwwwwwwwwwwwwwwwwwwwwww(cursor, "media_type");
                androidQDBUtils2.Kkkkkkkkkkk(cursor, "_data");
                try {
                    InputStream openInputStream = contentResolver.openInputStream(IDBUtils.DefaultImpls.Wwwwwwwwwww(androidQDBUtils2, Long.parseLong(Wwwwwww2), androidQDBUtils2.Kkkkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwww2), false, 4, null));
                    if (openInputStream != null) {
                        openInputStream.close();
                    }
                } catch (Exception unused) {
                    arrayList.add(Wwwwwww2);
                }
            }
            arrayList.toString();
            CloseableKt.closeFinally(Wwwwwwwwwwwwwwwww2, null);
            String joinToString$default = CollectionsKt.joinToString$default(arrayList, ",", null, null, 0, null, new Function1() { // from class: com.fluttercandies.photo_manager.core.utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    CharSequence Kkkkkkk;
                    Kkkkkkk = AndroidQDBUtils.Kkkkkkk((String) obj);
                    return Kkkkkkk;
                }
            }, 30, null);
            contentResolver.delete(INSTANCE.Wwwwwwwwwwwwwwwwwww(), "_id in ( " + joinToString$default + " )", (String[]) arrayList.toArray(new String[0]));
            reentrantLock.unlock();
            return true;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @Nullable
    public AssetEntity Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, boolean z) {
        AssetEntity assetEntity;
        Cursor Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwww(context.getContentResolver(), Wwwwwwwwwwwwwwwwwww(), keys(), "_id = ?", new String[]{str}, null);
        try {
            Cursor cursor = Wwwwwwwwwwwwwwwww2;
            if (cursor.moveToNext()) {
                assetEntity = IDBUtils.DefaultImpls.Kkkkkkkkkkkkkkkkkkk(INSTANCE, cursor, context, z, false, 4, null);
            } else {
                assetEntity = null;
            }
            CloseableKt.closeFinally(Wwwwwwwwwwwwwwwww2, null);
            return assetEntity;
        } finally {
        }
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @Nullable
    public Long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwww(this, context, str);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, context, str);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull AssetPathEntity assetPathEntity) {
        IDBUtils.DefaultImpls.Wwwwwwwwww(this, context, assetPathEntity);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull FilterOption filterOption, int i) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, context, filterOption, i);
    }

    @Override // com.fluttercandies.photo_manager.core.utils.IDBUtils
    @NotNull
    public String[] keys() {
        IDBUtils.Companion companion = IDBUtils.Companion;
        return (String[]) CollectionsKt.distinct(CollectionsKt.plus((Collection) CollectionsKt.plus((Collection) CollectionsKt.plus((Collection) companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), (Iterable) companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), (Object[]) companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), (Object[]) new String[]{"relative_path"})).toArray(new String[0]);
    }
}
