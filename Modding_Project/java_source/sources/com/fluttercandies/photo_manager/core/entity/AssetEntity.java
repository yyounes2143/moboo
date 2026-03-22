package com.fluttercandies.photo_manager.core.entity;

import android.net.Uri;
import androidx.collection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.fluttercandies.photo_manager.core.utils.IDBUtils;
import com.fluttercandies.photo_manager.core.utils.MediaStoreUtils;
import com.mbridge.msdk.MBridgeConstans;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0019\b\u0086\b\u0018\u00002\u00020\u0001B\u0087\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\f\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\b\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0014\u0010\u0015J\r\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u001b\u0010\u001cJ\u001a\u0010\u001f\u001a\u00020\u001e2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001f\u0010 R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010\u001aR\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b(\u0010\"\u001a\u0004\b(\u0010$R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b)\u0010\"\u001a\u0004\b!\u0010$R\u0017\u0010\t\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b#\u0010*\u001a\u0004\b+\u0010\u001cR\u0017\u0010\n\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b,\u0010*\u001a\u0004\b)\u0010\u001cR\u0017\u0010\u000b\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b-\u0010*\u001a\u0004\b.\u0010\u001cR\u0017\u0010\f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b/\u0010&\u001a\u0004\b%\u0010\u001aR\u0017\u0010\r\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b0\u0010\"\u001a\u0004\b0\u0010$R\u0017\u0010\u000e\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b1\u0010*\u001a\u0004\b1\u0010\u001cR\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006¢\u0006\f\n\u0004\b'\u00102\u001a\u0004\b,\u00103R\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u000f8\u0006¢\u0006\f\n\u0004\b4\u00102\u001a\u0004\b-\u00103R\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b.\u0010&\u001a\u0004\b5\u0010\u001aR\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0017\u0010&\u001a\u0004\b/\u0010\u001aR\u0019\u00106\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b+\u0010&\u001a\u0004\b4\u0010\u001a¨\u00067"}, d2 = {"Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;", "", "", "id", "", MBridgeConstans.DYNAMIC_VIEW_WX_PATH, TypedValues.TransitionType.S_DURATION, "createDt", "", "width", "height", "type", "displayName", "modifiedDate", "orientation", "", "lat", "lng", "androidQRelativePath", "mimeType", "<init>", "(JLjava/lang/String;JJIIILjava/lang/String;JILjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V", "Landroid/net/Uri;", "Wwwwwwwwwwwwwwwwwwwww", "()Landroid/net/Uri;", "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "Wwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Double;", "()Ljava/lang/Double;", "Wwwwwwwwwwwwwwwwwwwwwww", "getAndroidQRelativePath", "relativePath", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class AssetEntity {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f7405Wwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f7406Wwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f7407Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Double f7408Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Double f7409Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f7410Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f7411Wwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f7412Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f7413Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f7414Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f7415Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f7416Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f7417Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f7418Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f7419Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public AssetEntity(long j, @NotNull String str, long j2, long j3, int i, int i2, int i3, @NotNull String str2, long j4, int i4, @Nullable Double d, @Nullable Double d2, @Nullable String str3, @Nullable String str4) {
        this.f7419Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
        this.f7418Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f7417Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j2;
        this.f7416Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j3;
        this.f7415Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f7414Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2;
        this.f7413Wwwwwwwwwwwwwwwwwwwwwwwwwwww = i3;
        this.f7412Wwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
        this.f7411Wwwwwwwwwwwwwwwwwwwwwwwwww = j4;
        this.f7410Wwwwwwwwwwwwwwwwwwwwwwwww = i4;
        this.f7409Wwwwwwwwwwwwwwwwwwwwwwww = d;
        this.f7408Wwwwwwwwwwwwwwwwwwwwwww = d2;
        String str5 = str3;
        this.f7407Wwwwwwwwwwwwwwwwwwwwww = str5;
        this.f7406Wwwwwwwwwwwwwwwwwwwww = str4;
        this.f7405Wwwwwwwwwwwwwwwwwwww = IDBUtils.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() ? str5 : new File(str).getParent();
    }

    public final int Wwwwwwwwwwwwwwwwwwww() {
        return this.f7415Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Uri Wwwwwwwwwwwwwwwwwwwww() {
        MediaStoreUtils mediaStoreUtils = MediaStoreUtils.INSTANCE;
        return mediaStoreUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7419Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, mediaStoreUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7413Wwwwwwwwwwwwwwwwwwwwwwwwwwww));
    }

    public final int Wwwwwwwwwwwwwwwwwwwwww() {
        return this.f7413Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7405Wwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7418Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7410Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7411Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7406Wwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Double Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7408Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Double Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7409Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7419Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7414Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7417Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7412Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7416Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AssetEntity)) {
            return false;
        }
        AssetEntity assetEntity = (AssetEntity) obj;
        if (this.f7419Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == assetEntity.f7419Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && Intrinsics.areEqual(this.f7418Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, assetEntity.f7418Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f7417Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == assetEntity.f7417Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f7416Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == assetEntity.f7416Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f7415Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == assetEntity.f7415Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f7414Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == assetEntity.f7414Wwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f7413Wwwwwwwwwwwwwwwwwwwwwwwwwwww == assetEntity.f7413Wwwwwwwwwwwwwwwwwwwwwwwwwwww && Intrinsics.areEqual(this.f7412Wwwwwwwwwwwwwwwwwwwwwwwwwww, assetEntity.f7412Wwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f7411Wwwwwwwwwwwwwwwwwwwwwwwwww == assetEntity.f7411Wwwwwwwwwwwwwwwwwwwwwwwwww && this.f7410Wwwwwwwwwwwwwwwwwwwwwwwww == assetEntity.f7410Wwwwwwwwwwwwwwwwwwwwwwwww && Intrinsics.areEqual((Object) this.f7409Wwwwwwwwwwwwwwwwwwwwwwww, (Object) assetEntity.f7409Wwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual((Object) this.f7408Wwwwwwwwwwwwwwwwwwwwwww, (Object) assetEntity.f7408Wwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f7407Wwwwwwwwwwwwwwwwwwwwww, assetEntity.f7407Wwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f7406Wwwwwwwwwwwwwwwwwwwww, assetEntity.f7406Wwwwwwwwwwwwwwwwwwwww)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ((((((((((((((((((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7419Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) * 31) + this.f7418Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7417Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7416Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + this.f7415Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) * 31) + this.f7414Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) * 31) + this.f7413Wwwwwwwwwwwwwwwwwwwwwwwwwwww) * 31) + this.f7412Wwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7411Wwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + this.f7410Wwwwwwwwwwwwwwwwwwwwwwwww) * 31;
        Double d = this.f7409Wwwwwwwwwwwwwwwwwwwwwwww;
        int i = 0;
        if (d == null) {
            hashCode = 0;
        } else {
            hashCode = d.hashCode();
        }
        int i2 = (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + hashCode) * 31;
        Double d2 = this.f7408Wwwwwwwwwwwwwwwwwwwwwww;
        if (d2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = d2.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        String str = this.f7407Wwwwwwwwwwwwwwwwwwwwww;
        if (str == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str.hashCode();
        }
        int i4 = (i3 + hashCode3) * 31;
        String str2 = this.f7406Wwwwwwwwwwwwwwwwwwwww;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return i4 + i;
    }

    @NotNull
    public String toString() {
        long j = this.f7419Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        String str = this.f7418Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        long j2 = this.f7417Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        long j3 = this.f7416Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i = this.f7415Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i2 = this.f7414Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i3 = this.f7413Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        String str2 = this.f7412Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        long j4 = this.f7411Wwwwwwwwwwwwwwwwwwwwwwwwww;
        int i4 = this.f7410Wwwwwwwwwwwwwwwwwwwwwwwww;
        Double d = this.f7409Wwwwwwwwwwwwwwwwwwwwwwww;
        Double d2 = this.f7408Wwwwwwwwwwwwwwwwwwwwwww;
        String str3 = this.f7407Wwwwwwwwwwwwwwwwwwwwww;
        String str4 = this.f7406Wwwwwwwwwwwwwwwwwwwww;
        return "AssetEntity(id=" + j + ", path=" + str + ", duration=" + j2 + ", createDt=" + j3 + ", width=" + i + ", height=" + i2 + ", type=" + i3 + ", displayName=" + str2 + ", modifiedDate=" + j4 + ", orientation=" + i4 + ", lat=" + d + ", lng=" + d2 + ", androidQRelativePath=" + str3 + ", mimeType=" + str4 + ")";
    }

    public /* synthetic */ AssetEntity(long j, String str, long j2, long j3, int i, int i2, int i3, String str2, long j4, int i4, Double d, Double d2, String str3, String str4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, str, j2, j3, i, i2, i3, str2, j4, i4, (i5 & 1024) != 0 ? null : d, (i5 & 2048) != 0 ? null : d2, (i5 & 4096) != 0 ? null : str3, (i5 & 8192) != 0 ? null : str4);
    }
}
