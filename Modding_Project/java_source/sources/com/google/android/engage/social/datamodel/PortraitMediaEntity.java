package com.google.android.engage.social.datamodel;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.engage.common.datamodel.DisplayTimeWindow;
import com.google.android.engage.common.datamodel.Entity;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.common.base.Optional;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public final class PortraitMediaEntity extends Entity {
    private final zzj zza;
    private final PortraitMediaPost zzb;
    private final Profile zzc;
    private final Interaction zzd;
    private final ImmutableList zze;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private PortraitMediaPost zzb;
        private Profile zzc;
        private Interaction zzd;
        private final zzh zza = new zzh();
        private final ImmutableList.Builder zze = ImmutableList.builder();

        @NonNull
        public Builder addAllDisplayTimeWindow(@NonNull List<DisplayTimeWindow> list) {
            this.zza.zzc(list);
            return this;
        }

        @NonNull
        public Builder addDisplayTimeWindow(@NonNull DisplayTimeWindow displayTimeWindow) {
            this.zza.zzd(displayTimeWindow);
            return this;
        }

        @NonNull
        public Builder addInteractions(@NonNull List<Interaction> list) {
            this.zze.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public PortraitMediaEntity build() {
            return new PortraitMediaEntity(this, null);
        }

        @NonNull
        public Builder setActionLinkUri(@NonNull Uri uri) {
            this.zza.zzg(uri);
            return this;
        }

        @NonNull
        public Builder setEntityId(@NonNull String str) {
            this.zza.zzh(str);
            return this;
        }

        @NonNull
        @Deprecated
        public Builder setInteraction(@NonNull Interaction interaction) {
            this.zzd = interaction;
            return this;
        }

        @NonNull
        public Builder setPortraitMediaPost(@NonNull PortraitMediaPost portraitMediaPost) {
            this.zzb = portraitMediaPost;
            return this;
        }

        @NonNull
        public Builder setProfile(@NonNull Profile profile) {
            this.zzc = profile;
            return this;
        }
    }

    public /* synthetic */ PortraitMediaEntity(Builder builder, zze zzeVar) {
        super(24);
        this.zza = new zzj(builder.zza, null);
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
        this.zzd = builder.zzd;
        this.zze = builder.zze.build();
    }

    @NonNull
    public Uri getActionLinkUri() {
        return this.zza.zza();
    }

    @NonNull
    public List<DisplayTimeWindow> getDisplayTimeWindows() {
        return this.zza.zzd();
    }

    @NonNull
    public Optional<String> getEntityId() {
        return this.zza.zzc();
    }

    @NonNull
    public Optional<Interaction> getInteraction() {
        return Optional.fromNullable(this.zzd);
    }

    @NonNull
    public ImmutableList<Interaction> getInteractions() {
        return this.zze;
    }

    @NonNull
    public PortraitMediaPost getPortraitMediaPost() {
        return this.zzb;
    }

    @NonNull
    public Optional<Profile> getProfile() {
        return Optional.fromNullable(this.zzc);
    }

    @Override // com.google.android.engage.common.datamodel.Entity
    @NonNull
    public final Bundle toBundle() {
        Bundle bundle = super.toBundle();
        bundle.putBundle(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, this.zza.zzb());
        PortraitMediaPost portraitMediaPost = this.zzb;
        if (portraitMediaPost != null) {
            bundle.putBundle("B", portraitMediaPost.zza());
        }
        Profile profile = this.zzc;
        if (profile != null) {
            bundle.putBundle("C", profile.zza());
        }
        ImmutableList immutableList = this.zze;
        if (!immutableList.isEmpty()) {
            bundle.putBundle("D", ((Interaction) immutableList.get(0)).zza());
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            int size = immutableList.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(((Interaction) immutableList.get(i)).zza());
            }
            bundle.putParcelableArrayList(ExifInterface.LONGITUDE_EAST, arrayList);
            return bundle;
        }
        Interaction interaction = this.zzd;
        if (interaction != null) {
            bundle.putBundle("D", interaction.zza());
        }
        return bundle;
    }
}
