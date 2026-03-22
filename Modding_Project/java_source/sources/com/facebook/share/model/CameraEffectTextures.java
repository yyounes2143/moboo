package com.facebook.share.model;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000  2\u00020\u0001:\u0002! B\u0011\b\u0012\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u0019\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000f\u0010\u0010J\u0013\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\t0\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006\""}, d2 = {"Lcom/facebook/share/model/CameraEffectTextures;", "Lcom/facebook/share/model/ShareModel;", "Lcom/facebook/share/model/CameraEffectTextures$Builder;", "builder", "<init>", "(Lcom/facebook/share/model/CameraEffectTextures$Builder;)V", "Landroid/os/Parcel;", "parcel", "(Landroid/os/Parcel;)V", "", "key", "Landroid/graphics/Bitmap;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Landroid/graphics/Bitmap;", "Landroid/net/Uri;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Landroid/net/Uri;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/Set;", "", "describeContents", "()I", "out", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "Landroid/os/Bundle;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/os/Bundle;", "textures", "Companion", "Builder", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class CameraEffectTextures implements ShareModel {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Bundle f7174Wwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final Parcelable.Creator<CameraEffectTextures> CREATOR = new Parcelable.Creator<CameraEffectTextures>() { // from class: com.facebook.share.model.CameraEffectTextures$Companion$CREATOR$1
        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public CameraEffectTextures[] newArray(int i) {
            return new CameraEffectTextures[i];
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public CameraEffectTextures createFromParcel(@NotNull Parcel parcel) {
            return new CameraEffectTextures(parcel);
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\u0006\u001a\u00020\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\f\u0010\rR\u001a\u0010\u0012\u001a\u00020\u000e8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\f\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"Lcom/facebook/share/model/CameraEffectTextures$Builder;", "Lcom/facebook/share/model/ShareModelBuilder;", "Lcom/facebook/share/model/CameraEffectTextures;", "<init>", "()V", "model", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/share/model/CameraEffectTextures;)Lcom/facebook/share/model/CameraEffectTextures$Builder;", "Landroid/os/Parcel;", "parcel", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Parcel;)Lcom/facebook/share/model/CameraEffectTextures$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/share/model/CameraEffectTextures;", "Landroid/os/Bundle;", "Landroid/os/Bundle;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/os/Bundle;", "textures", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Builder implements ShareModelBuilder<CameraEffectTextures, Builder> {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Bundle f7175Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Bundle();

        @NotNull
        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable CameraEffectTextures cameraEffectTextures) {
            if (cameraEffectTextures != null) {
                this.f7175Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.putAll(cameraEffectTextures.f7174Wwwwwwwwwwwwwwwwwwwwwwwww);
            }
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Parcel parcel) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((CameraEffectTextures) parcel.readParcelable(CameraEffectTextures.class.getClassLoader()));
        }

        @NotNull
        public final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f7175Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public CameraEffectTextures Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new CameraEffectTextures(this, null);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/share/model/CameraEffectTextures$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/share/model/CameraEffectTextures;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public /* synthetic */ CameraEffectTextures(Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
        this(builder);
    }

    @NotNull
    public final Set<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Set<String> keySet;
        Bundle bundle = this.f7174Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (bundle == null) {
            keySet = null;
        } else {
            keySet = bundle.keySet();
        }
        if (keySet == null) {
            return SetsKt.emptySet();
        }
        return keySet;
    }

    @Nullable
    public final Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
        Object obj;
        Bundle bundle = this.f7174Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (bundle == null) {
            obj = null;
        } else {
            obj = bundle.get(str);
        }
        if (!(obj instanceof Uri)) {
            return null;
        }
        return (Uri) obj;
    }

    @Nullable
    public final Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
        Object obj;
        Bundle bundle = this.f7174Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (bundle == null) {
            obj = null;
        } else {
            obj = bundle.get(str);
        }
        if (!(obj instanceof Bitmap)) {
            return null;
        }
        return (Bitmap) obj;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i) {
        parcel.writeBundle(this.f7174Wwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public CameraEffectTextures(Builder builder) {
        this.f7174Wwwwwwwwwwwwwwwwwwwwwwwww = builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public CameraEffectTextures(@NotNull Parcel parcel) {
        this.f7174Wwwwwwwwwwwwwwwwwwwwwwwww = parcel.readBundle(CameraEffectTextures.class.getClassLoader());
    }
}
