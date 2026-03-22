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
public final class SocialPostEntity extends Entity {
    private final zzj zza;
    private final GenericPost zzb;
    private final Profile zzc;
    private final List zzd;

    /* compiled from: Proguard */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public static final class Builder {
        private GenericPost zzb;
        private Profile zzc;
        private final zzh zza = new zzh();
        private final ImmutableList.Builder zzd = ImmutableList.builder();

        @NonNull
        public Builder addAllDisplayTimeWindow(@NonNull List<DisplayTimeWindow> list) {
            this.zza.zzc(list);
            return this;
        }

        @NonNull
        public Builder addAllInteraction(@NonNull List<Interaction> list) {
            this.zzd.addAll((Iterable) list);
            return this;
        }

        @NonNull
        public Builder addDisplayTimeWindow(@NonNull DisplayTimeWindow displayTimeWindow) {
            this.zza.zzd(displayTimeWindow);
            return this;
        }

        @NonNull
        public Builder addInteraction(@NonNull Interaction interaction) {
            this.zzd.add((ImmutableList.Builder) interaction);
            return this;
        }

        @NonNull
        public SocialPostEntity build() {
            return new SocialPostEntity(this, null);
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
        public Builder setGenericPost(@NonNull GenericPost genericPost) {
            this.zzb = genericPost;
            return this;
        }

        @NonNull
        public Builder setProfile(@NonNull Profile profile) {
            this.zzc = profile;
            return this;
        }
    }

    public /* synthetic */ SocialPostEntity(Builder builder, zzk zzkVar) {
        super(25);
        this.zza = new zzj(builder.zza, null);
        this.zzb = builder.zzb;
        this.zzc = builder.zzc;
        this.zzd = builder.zzd.build();
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
    public GenericPost getGenericPost() {
        return this.zzb;
    }

    @NonNull
    public List<Interaction> getInteractions() {
        return this.zzd;
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
        GenericPost genericPost = this.zzb;
        if (genericPost != null) {
            bundle.putBundle("B", genericPost.zza());
        }
        Profile profile = this.zzc;
        if (profile != null) {
            bundle.putBundle("C", profile.zza());
        }
        List<Interaction> list = this.zzd;
        if (!list.isEmpty()) {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            for (Interaction interaction : list) {
                arrayList.add(interaction.zza());
            }
            bundle.putParcelableArrayList("D", arrayList);
        }
        return bundle;
    }
}
