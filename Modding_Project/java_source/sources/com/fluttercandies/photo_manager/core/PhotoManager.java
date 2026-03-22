package com.fluttercandies.photo_manager.core;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import androidx.exifinterface.media.ExifInterface;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.FutureTarget;
import com.fluttercandies.photo_manager.core.entity.AssetEntity;
import com.fluttercandies.photo_manager.core.entity.AssetPathEntity;
import com.fluttercandies.photo_manager.core.entity.ThumbLoadOption;
import com.fluttercandies.photo_manager.core.entity.filter.FilterOption;
import com.fluttercandies.photo_manager.core.utils.AndroidQDBUtils;
import com.fluttercandies.photo_manager.core.utils.ConvertUtils;
import com.fluttercandies.photo_manager.core.utils.DBUtils;
import com.fluttercandies.photo_manager.core.utils.IDBUtils;
import com.fluttercandies.photo_manager.thumb.ThumbnailUtil;
import com.fluttercandies.photo_manager.util.LogUtils;
import com.fluttercandies.photo_manager.util.ResultHandler;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0010\u0012\n\u0002\b\u000f\n\u0002\u0010$\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 n2\u00020\u0001:\u0001nB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J3\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u000f\u0010\u0010J=\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\r2\u0006\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u0017\u0010\u0018J;\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00160\r2\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u001c\u0010\u0018J%\u0010!\u001a\u00020 2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b!\u0010\"J%\u0010$\u001a\u00020 2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\b¢\u0006\u0004\b$\u0010%J\r\u0010&\u001a\u00020 ¢\u0006\u0004\b&\u0010'J'\u0010(\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b(\u0010)J%\u0010+\u001a\u00020 2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010*\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b+\u0010,J?\u00104\u001a\u00020\u00162\u0006\u0010.\u001a\u00020-2\u0006\u0010/\u001a\u00020\u00112\u0006\u00100\u001a\u00020\u00112\u0006\u00101\u001a\u00020\u00112\u0006\u00102\u001a\u00020\u00112\b\u00103\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b4\u00105J7\u00107\u001a\u00020\u00162\u0006\u00106\u001a\u00020\u00112\u0006\u00100\u001a\u00020\u00112\u0006\u00101\u001a\u00020\u00112\u0006\u00102\u001a\u00020\u00112\b\u00103\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b7\u00108J7\u0010:\u001a\u00020\u00162\u0006\u00106\u001a\u00020\u00112\u0006\u00100\u001a\u00020\u00112\u0006\u00109\u001a\u00020\u00112\u0006\u00102\u001a\u00020\u00112\b\u00103\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b:\u00108J\u001d\u0010;\u001a\u00020 2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b;\u0010<J!\u0010?\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020>0=2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b?\u0010@J\u001d\u0010B\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020A2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\bB\u0010CJ%\u0010E\u001a\u00020 2\u0006\u0010D\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\bE\u0010FJ%\u0010H\u001a\u00020 2\u0006\u0010D\u001a\u00020\u00112\u0006\u0010G\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\bH\u0010FJ\u0015\u0010I\u001a\u00020 2\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\bI\u0010JJ\u0017\u0010K\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\bK\u0010LJ\u0015\u0010N\u001a\u00020M2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\bN\u0010OJ+\u0010Q\u001a\u00020 2\f\u0010P\u001a\b\u0012\u0004\u0012\u00020\u00110\r2\u0006\u0010\f\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\bQ\u0010RJ\r\u0010S\u001a\u00020 ¢\u0006\u0004\bS\u0010'J\u0015\u0010T\u001a\u00020 2\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\bT\u0010JJ%\u0010V\u001a\u00020 2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010U\u001a\u00020\u0006¢\u0006\u0004\bV\u0010WJ-\u0010X\u001a\u00020 2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010U\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0011¢\u0006\u0004\bX\u0010YJ5\u0010Z\u001a\u00020 2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010U\u001a\u00020\u0006¢\u0006\u0004\bZ\u0010[R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\\\u0010]R\"\u0010c\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b;\u0010^\u001a\u0004\b_\u0010`\"\u0004\ba\u0010bR0\u0010i\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020f0e0dj\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020f0e`g8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bS\u0010hR\u0014\u0010m\u001a\u00020j8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bk\u0010l¨\u0006o"}, d2 = {"Lcom/fluttercandies/photo_manager/core/PhotoManager;", "", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "", "type", "", "hasAll", "onlyAll", "Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;", "option", "", "Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;", "Wwwwwwwwwwwwwwwwwwwwwww", "(IZZLcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;", "", "id", "typeInt", "page", "size", "Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;IIILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Ljava/util/List;", "galleryId", "start", "end", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;", "Lcom/fluttercandies/photo_manager/util/ResultHandler;", "resultHandler", "", "Wwwwwwwwwwwwwww", "(Ljava/lang/String;Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V", "needLocationPermission", "Wwwwwwwwwwwwwwww", "(Ljava/lang/String;Lcom/fluttercandies/photo_manager/util/ResultHandler;Z)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;ILcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;)Lcom/fluttercandies/photo_manager/core/entity/AssetPathEntity;", "isOrigin", "Wwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;ZLcom/fluttercandies/photo_manager/util/ResultHandler;)V", "", "bytes", "filename", CampaignEx.JSON_KEY_TITLE, "description", "relativePath", "orientation", "Wwwwwwww", "([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;", "filePath", "Wwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;", CampaignEx.JSON_KEY_DESC, "Wwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V", "", "", "Wwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/util/Map;", "", "Wwwwwwwwwwwwwwwww", "(JI)Ljava/lang/String;", "assetId", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V", "albumId", "Wwwwwwwwwwwww", "Wwwwwwwwwwww", "(Lcom/fluttercandies/photo_manager/util/ResultHandler;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;", "Landroid/net/Uri;", "Wwwwwwwwwwwwww", "(Ljava/lang/String;)Landroid/net/Uri;", "ids", "Wwwwwwwwwww", "(Ljava/util/List;Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwww", "requestType", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/photo_manager/util/ResultHandler;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;I)V", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/photo_manager/util/ResultHandler;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;ILjava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/photo_manager/util/ResultHandler;Lcom/fluttercandies/photo_manager/core/entity/filter/FilterOption;III)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "Z", "getUseOldApi", "()Z", "Wwwwww", "(Z)V", "useOldApi", "Ljava/util/ArrayList;", "Lcom/bumptech/glide/request/FutureTarget;", "Landroid/graphics/Bitmap;", "Lkotlin/collections/ArrayList;", "Ljava/util/ArrayList;", "cacheFutures", "Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;", "Wwwwwwwwwwwwwwwwwwww", "()Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;", "dbUtils", "Companion", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class PhotoManager {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ExecutorService f7355Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Executors.newFixedThreadPool(5);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayList<FutureTarget<Bitmap>> f7356Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f7357Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\b0\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/fluttercandies/photo_manager/core/PhotoManager$Companion;", "", "<init>", "()V", "ALL_ID", "", "ALL_ALBUM_NAME", "threadPool", "Ljava/util/concurrent/ExecutorService;", "kotlin.jvm.PlatformType", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public PhotoManager(@NotNull Context context) {
        this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
    }

    public static final void Wwwwwwwwww(FutureTarget futureTarget) {
        if (!futureTarget.isCancelled()) {
            try {
                futureTarget.get();
            } catch (Exception e) {
                LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e);
            }
        }
    }

    public final void Wwwwww(boolean z) {
        this.f7357Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
    }

    @NotNull
    public final AssetEntity Wwwwwww(@NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @Nullable Integer num) {
        return Wwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwww(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str, str2, str3, str4, num);
    }

    @NotNull
    public final AssetEntity Wwwwwwww(@NotNull byte[] bArr, @NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @Nullable Integer num) {
        return Wwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, bArr, str, str2, str3, str4, num);
    }

    @NotNull
    public final AssetEntity Wwwwwwwww(@NotNull String str, @NotNull String str2, @NotNull String str3, @NotNull String str4, @Nullable Integer num) {
        return Wwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str, str2, str3, str4, num);
    }

    public final void Wwwwwwwwwww(@NotNull List<String> list, @NotNull ThumbLoadOption thumbLoadOption, @NotNull ResultHandler resultHandler) {
        for (String str : Wwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwww(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, list)) {
            this.f7356Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(ThumbnailUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str, thumbLoadOption));
        }
        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
        for (final FutureTarget futureTarget : CollectionsKt.toList(this.f7356Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            f7355Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.execute(new Runnable() { // from class: com.fluttercandies.photo_manager.core.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    PhotoManager.Wwwwwwwwww(FutureTarget.this);
                }
            });
        }
    }

    public final void Wwwwwwwwwwww(@NotNull ResultHandler resultHandler) {
        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Boolean.valueOf(Wwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)));
    }

    public final void Wwwwwwwwwwwww(@NotNull String str, @NotNull String str2, @NotNull ResultHandler resultHandler) {
        try {
            resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ConvertUtils.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwww().Kkkkkkkkkkkkkkkkkkkkkkkkk(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str, str2)));
        } catch (Exception e) {
            LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e);
            resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
        }
    }

    @NotNull
    public final Uri Wwwwwwwwwwwwww(@NotNull String str) {
        AssetEntity Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwww(), this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str, false, 4, null);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwww();
        }
        throw new RuntimeException("Failed to find asset " + str);
    }

    public final void Wwwwwwwwwwwwwww(@NotNull String str, @NotNull ThumbLoadOption thumbLoadOption, @NotNull ResultHandler resultHandler) {
        String str2;
        AssetEntity Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = thumbLoadOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = thumbLoadOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = thumbLoadOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Bitmap.CompressFormat Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = thumbLoadOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = thumbLoadOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        try {
            try {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwww(), this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str, false, 4, null);
                str2 = str;
            } catch (Exception e) {
                e = e;
                str2 = str;
            }
        } catch (Exception e2) {
            e = e2;
            str2 = str;
        }
        try {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                ResultHandler.Wwwwwwwwwwwwwwwwwwwwwwwww(resultHandler, "201", "Failed to find the asset " + str2, null, 4, null);
                return;
            }
            ThumbnailUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, resultHandler);
        } catch (Exception e3) {
            e = e3;
            Wwwwwwwwwwwwwwwwwwww().Wwwwwwwwww(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str2);
            resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwww("201", "get thumb error", e);
        }
    }

    public final void Wwwwwwwwwwwwwwww(@NotNull String str, @NotNull ResultHandler resultHandler, boolean z) {
        AssetEntity Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwww(), this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str, false, 4, null);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            ResultHandler.Wwwwwwwwwwwwwwwwwwwwwwwww(resultHandler, "202", "Failed to find the asset " + str, null, 4, null);
            return;
        }
        try {
            resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwww().Kkkkkkkkkkkkkkkkkkkkkkkkkk(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwww2, z));
        } catch (Exception e) {
            Wwwwwwwwwwwwwwwwwwww().Wwwwwwwwww(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str);
            resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwww("202", "get originBytes error", e);
        }
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwww(long j, int i) {
        return Wwwwwwwwwwwwwwwwwwww().Kkkkkkkkkkkkkkkkkkkkkkk(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, j, i);
    }

    @NotNull
    public final Map<String, Double> Wwwwwwwwwwwwwwwwww(@NotNull String str) {
        double[] dArr;
        ExifInterface Www2 = Wwwwwwwwwwwwwwwwwwww().Www(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str);
        if (Www2 != null) {
            dArr = Www2.getLatLong();
        } else {
            dArr = null;
        }
        if (dArr == null) {
            return MapsKt.mapOf(TuplesKt.to("lat", Double.valueOf((double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE)), TuplesKt.to("lng", Double.valueOf((double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE)));
        }
        return MapsKt.mapOf(TuplesKt.to("lat", Double.valueOf(dArr[0])), TuplesKt.to("lng", Double.valueOf(dArr[1])));
    }

    public final void Wwwwwwwwwwwwwwwwwww(@NotNull String str, boolean z, @NotNull ResultHandler resultHandler) {
        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwww().Wwwww(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str, z));
    }

    public final IDBUtils Wwwwwwwwwwwwwwwwwwww() {
        if (!this.f7357Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && Build.VERSION.SDK_INT >= 29) {
            return AndroidQDBUtils.INSTANCE;
        }
        return DBUtils.INSTANCE;
    }

    public final void Wwwwwwwwwwwwwwwwwwwww(@NotNull ResultHandler resultHandler) {
        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwww(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww(@NotNull ResultHandler resultHandler, @NotNull FilterOption filterOption, int i, int i2, int i3) {
        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ConvertUtils.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwww(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, filterOption, i, i2, i3)));
    }

    @NotNull
    public final List<AssetPathEntity> Wwwwwwwwwwwwwwwwwwwwwww(int i, boolean z, boolean z2, @NotNull FilterOption filterOption) {
        if (z2) {
            return Wwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, filterOption);
        }
        List<AssetPathEntity> Wwwwwwww2 = Wwwwwwwwwwwwwwwwwwww().Wwwwwwww(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, filterOption);
        if (!z) {
            return Wwwwwwww2;
        }
        int i2 = 0;
        for (AssetPathEntity assetPathEntity : Wwwwwwww2) {
            i2 += assetPathEntity.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        return CollectionsKt.plus((Collection) CollectionsKt.listOf(new AssetPathEntity("isAll", "Recent", i2, i, true, null, 32, null)), (Iterable) Wwwwwwww2);
    }

    @NotNull
    public final List<AssetEntity> Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, int i, int i2, int i3, @NotNull FilterOption filterOption) {
        if (Intrinsics.areEqual(str, "isAll")) {
            str = "";
        }
        return Wwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str, i2, i3, i, filterOption);
    }

    @NotNull
    public final List<AssetEntity> Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, int i, int i2, int i3, @NotNull FilterOption filterOption) {
        if (Intrinsics.areEqual(str, "isAll")) {
            str = "";
        }
        return Wwwwwwwwwwwwwwwwwwww().Wwwwwwwww(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str, i2, i3, i, filterOption);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ResultHandler resultHandler, @NotNull FilterOption filterOption, int i, @NotNull String str) {
        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Integer.valueOf(Wwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwww(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, filterOption, i, str)));
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ResultHandler resultHandler, @NotNull FilterOption filterOption, int i) {
        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Integer.valueOf(Wwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, filterOption, i)));
    }

    @Nullable
    public final AssetPathEntity Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, int i, @NotNull FilterOption filterOption) {
        if (Intrinsics.areEqual(str, "isAll")) {
            List<AssetPathEntity> Wwwwwwww2 = Wwwwwwwwwwwwwwwwwwww().Wwwwwwww(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, filterOption);
            if (Wwwwwwww2.isEmpty()) {
                return null;
            }
            int i2 = 0;
            for (AssetPathEntity assetPathEntity : Wwwwwwww2) {
                i2 += assetPathEntity.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            AssetPathEntity assetPathEntity2 = new AssetPathEntity("isAll", "Recent", i2, i, true, null, 32, null);
            if (filterOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                Wwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, assetPathEntity2);
            }
            return assetPathEntity2;
        }
        AssetPathEntity Wwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwww(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str, i, filterOption);
        if (Wwwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        if (filterOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            Wwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwww2);
        }
        return Wwwwwwwwwwwwwwwwww2;
    }

    @Nullable
    public final AssetEntity Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        return IDBUtils.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwww(), this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str, false, 4, null);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2, @NotNull ResultHandler resultHandler) {
        try {
            resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ConvertUtils.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwww(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str, str2)));
        } catch (Exception e) {
            LogUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e);
            resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        ThumbnailUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        Wwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwww(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        List<FutureTarget> list = CollectionsKt.toList(this.f7356Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f7356Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        for (FutureTarget futureTarget : list) {
            Glide.Wwwwwwwwwwwwww(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwww(futureTarget);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull ResultHandler resultHandler) {
        resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Boolean.valueOf(Wwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str)));
    }
}
