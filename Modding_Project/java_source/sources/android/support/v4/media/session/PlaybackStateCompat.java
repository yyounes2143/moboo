package android.support.v4.media.session;

import android.annotation.SuppressLint;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new Parcelable.Creator<PlaybackStateCompat>() { // from class: android.support.v4.media.session.PlaybackStateCompat.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public PlaybackStateCompat[] newArray(int i) {
            return new PlaybackStateCompat[i];
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }
    };

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public PlaybackState f358Wwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public final Bundle f359Wwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f360Wwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public List<CustomAction> f361Wwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f362Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CharSequence f363Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f364Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f365Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final float f366Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f367Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f368Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f369Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface Actions {
    }

    /* compiled from: Proguard */
    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static class Api21Impl {
        @DoNotInline
        public static void Wwwwwwwwwww(PlaybackState.Builder builder, int i, long j, float f, long j2) {
            builder.setState(i, j, f, j2);
        }

        @DoNotInline
        public static void Wwwwwwwwwwww(PlaybackState.CustomAction.Builder builder, Bundle bundle) {
            builder.setExtras(bundle);
        }

        @DoNotInline
        public static void Wwwwwwwwwwwww(PlaybackState.Builder builder, CharSequence charSequence) {
            builder.setErrorMessage(charSequence);
        }

        @DoNotInline
        public static void Wwwwwwwwwwwwww(PlaybackState.Builder builder, long j) {
            builder.setBufferedPosition(j);
        }

        @DoNotInline
        public static void Wwwwwwwwwwwwwww(PlaybackState.Builder builder, long j) {
            builder.setActiveQueueItemId(j);
        }

        @DoNotInline
        public static void Wwwwwwwwwwwwwwww(PlaybackState.Builder builder, long j) {
            builder.setActions(j);
        }

        @DoNotInline
        public static int Wwwwwwwwwwwwwwwww(PlaybackState playbackState) {
            return playbackState.getState();
        }

        @DoNotInline
        public static long Wwwwwwwwwwwwwwwwww(PlaybackState playbackState) {
            return playbackState.getPosition();
        }

        @DoNotInline
        public static float Wwwwwwwwwwwwwwwwwww(PlaybackState playbackState) {
            return playbackState.getPlaybackSpeed();
        }

        @DoNotInline
        public static CharSequence Wwwwwwwwwwwwwwwwwwww(PlaybackState.CustomAction customAction) {
            return customAction.getName();
        }

        @DoNotInline
        public static long Wwwwwwwwwwwwwwwwwwwww(PlaybackState playbackState) {
            return playbackState.getLastPositionUpdateTime();
        }

        @DoNotInline
        public static int Wwwwwwwwwwwwwwwwwwwwww(PlaybackState.CustomAction customAction) {
            return customAction.getIcon();
        }

        @DoNotInline
        public static Bundle Wwwwwwwwwwwwwwwwwwwwwww(PlaybackState.CustomAction customAction) {
            return customAction.getExtras();
        }

        @DoNotInline
        public static CharSequence Wwwwwwwwwwwwwwwwwwwwwwww(PlaybackState playbackState) {
            return playbackState.getErrorMessage();
        }

        @DoNotInline
        public static List<PlaybackState.CustomAction> Wwwwwwwwwwwwwwwwwwwwwwwww(PlaybackState playbackState) {
            return playbackState.getCustomActions();
        }

        @DoNotInline
        public static long Wwwwwwwwwwwwwwwwwwwwwwwwww(PlaybackState playbackState) {
            return playbackState.getBufferedPosition();
        }

        @DoNotInline
        public static long Wwwwwwwwwwwwwwwwwwwwwwwwwww(PlaybackState playbackState) {
            return playbackState.getActiveQueueItemId();
        }

        @DoNotInline
        public static long Wwwwwwwwwwwwwwwwwwwwwwwwwwww(PlaybackState playbackState) {
            return playbackState.getActions();
        }

        @DoNotInline
        public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(PlaybackState.CustomAction customAction) {
            return customAction.getAction();
        }

        @DoNotInline
        public static PlaybackState.CustomAction.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, CharSequence charSequence, int i) {
            return new PlaybackState.CustomAction.Builder(str, charSequence, i);
        }

        @DoNotInline
        public static PlaybackState.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new PlaybackState.Builder();
        }

        @DoNotInline
        public static PlaybackState Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(PlaybackState.Builder builder) {
            return builder.build();
        }

        @DoNotInline
        public static PlaybackState.CustomAction Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(PlaybackState.CustomAction.Builder builder) {
            return builder.build();
        }

        @DoNotInline
        public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(PlaybackState.Builder builder, PlaybackState.CustomAction customAction) {
            builder.addCustomAction(customAction);
        }
    }

    /* compiled from: Proguard */
    @RequiresApi(22)
    /* loaded from: classes.dex */
    public static class Api22Impl {
        @DoNotInline
        public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(PlaybackState.Builder builder, Bundle bundle) {
            builder.setExtras(bundle);
        }

        @DoNotInline
        public static Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(PlaybackState playbackState) {
            return playbackState.getExtras();
        }
    }

    /* compiled from: Proguard */
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public @interface MediaKeyAction {
    }

    /* compiled from: Proguard */
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface RepeatMode {
    }

    /* compiled from: Proguard */
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface ShuffleMode {
    }

    /* compiled from: Proguard */
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface State {
    }

    public PlaybackStateCompat(int i, long j, long j2, float f, long j3, int i2, CharSequence charSequence, long j4, List<CustomAction> list, long j5, Bundle bundle) {
        this.f369Wwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f368Wwwwwwwwwwwwwwwwwwwwwwww = j;
        this.f367Wwwwwwwwwwwwwwwwwwwwwww = j2;
        this.f366Wwwwwwwwwwwwwwwwwwwwww = f;
        this.f365Wwwwwwwwwwwwwwwwwwwww = j3;
        this.f364Wwwwwwwwwwwwwwwwwwww = i2;
        this.f363Wwwwwwwwwwwwwwwwwww = charSequence;
        this.f362Wwwwwwwwwwwwwwwwww = j4;
        this.f361Wwwwwwwwwwwwwwwww = new ArrayList(list);
        this.f360Wwwwwwwwwwwwwwww = j5;
        this.f359Wwwwwwwwwwwwwww = bundle;
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        if (j == 4) {
            return 126;
        }
        if (j == 2) {
            return 127;
        }
        if (j == 32) {
            return 87;
        }
        if (j == 16) {
            return 88;
        }
        if (j == 1) {
            return 86;
        }
        if (j == 64) {
            return 90;
        }
        if (j == 8) {
            return 89;
        }
        if (j == 512) {
            return 85;
        }
        return 0;
    }

    public static PlaybackStateCompat Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        ArrayList arrayList = null;
        if (obj == null) {
            return null;
        }
        PlaybackState playbackState = (PlaybackState) obj;
        List<PlaybackState.CustomAction> Wwwwwwwwwwwwwwwwwwwwwwwww2 = Api21Impl.Wwwwwwwwwwwwwwwwwwwwwwwww(playbackState);
        if (Wwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            arrayList = new ArrayList(Wwwwwwwwwwwwwwwwwwwwwwwww2.size());
            for (PlaybackState.CustomAction customAction : Wwwwwwwwwwwwwwwwwwwwwwwww2) {
                arrayList.add(CustomAction.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(customAction));
            }
        }
        Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Api22Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(playbackState);
        MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        PlaybackStateCompat playbackStateCompat = new PlaybackStateCompat(Api21Impl.Wwwwwwwwwwwwwwwww(playbackState), Api21Impl.Wwwwwwwwwwwwwwwwww(playbackState), Api21Impl.Wwwwwwwwwwwwwwwwwwwwwwwwww(playbackState), Api21Impl.Wwwwwwwwwwwwwwwwwww(playbackState), Api21Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(playbackState), 0, Api21Impl.Wwwwwwwwwwwwwwwwwwwwwwww(playbackState), Api21Impl.Wwwwwwwwwwwwwwwwwwwww(playbackState), arrayList, Api21Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwww(playbackState), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        playbackStateCompat.f358Wwwwwwwwwwwwww = playbackState;
        return playbackStateCompat;
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f369Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f368Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    public Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f358Wwwwwwwwwwwwww == null) {
            PlaybackState.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Api21Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Api21Impl.Wwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f369Wwwwwwwwwwwwwwwwwwwwwwwww, this.f368Wwwwwwwwwwwwwwwwwwwwwwww, this.f366Wwwwwwwwwwwwwwwwwwwwww, this.f362Wwwwwwwwwwwwwwwwww);
            Api21Impl.Wwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f367Wwwwwwwwwwwwwwwwwwwwwww);
            Api21Impl.Wwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f365Wwwwwwwwwwwwwwwwwwwww);
            Api21Impl.Wwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f363Wwwwwwwwwwwwwwwwwww);
            for (CustomAction customAction : this.f361Wwwwwwwwwwwwwwwww) {
                Api21Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, (PlaybackState.CustomAction) customAction.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
            Api21Impl.Wwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f360Wwwwwwwwwwwwwwww);
            Api22Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f359Wwwwwwwwwwwwwww);
            this.f358Wwwwwwwwwwwwww = Api21Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        return this.f358Wwwwwwwwwwwwww;
    }

    public float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f366Wwwwwwwwwwwwwwwwwwwwww;
    }

    public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f362Wwwwwwwwwwwwwwwwww;
    }

    public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f365Wwwwwwwwwwwwwwwwwwwww;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "PlaybackState {state=" + this.f369Wwwwwwwwwwwwwwwwwwwwwwwww + ", position=" + this.f368Wwwwwwwwwwwwwwwwwwwwwwww + ", buffered position=" + this.f367Wwwwwwwwwwwwwwwwwwwwwww + ", speed=" + this.f366Wwwwwwwwwwwwwwwwwwwwww + ", updated=" + this.f362Wwwwwwwwwwwwwwwwww + ", actions=" + this.f365Wwwwwwwwwwwwwwwwwwwww + ", error code=" + this.f364Wwwwwwwwwwwwwwwwwwww + ", error message=" + this.f363Wwwwwwwwwwwwwwwwwww + ", custom actions=" + this.f361Wwwwwwwwwwwwwwwww + ", active item id=" + this.f360Wwwwwwwwwwwwwwww + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f369Wwwwwwwwwwwwwwwwwwwwwwwww);
        parcel.writeLong(this.f368Wwwwwwwwwwwwwwwwwwwwwwww);
        parcel.writeFloat(this.f366Wwwwwwwwwwwwwwwwwwwwww);
        parcel.writeLong(this.f362Wwwwwwwwwwwwwwwwww);
        parcel.writeLong(this.f367Wwwwwwwwwwwwwwwwwwwwwww);
        parcel.writeLong(this.f365Wwwwwwwwwwwwwwwwwwwww);
        TextUtils.writeToParcel(this.f363Wwwwwwwwwwwwwwwwwww, parcel, i);
        parcel.writeTypedList(this.f361Wwwwwwwwwwwwwwwww);
        parcel.writeLong(this.f360Wwwwwwwwwwwwwwww);
        parcel.writeBundle(this.f359Wwwwwwwwwwwwwww);
        parcel.writeInt(this.f364Wwwwwwwwwwwwwwwwwwww);
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Bundle f370Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f371Wwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f372Wwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public CharSequence f373Wwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f374Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f375Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public float f376Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f377Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f378Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f379Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<CustomAction> f380Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Builder() {
            this.f380Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
            this.f371Wwwwwwwwwwwwwwwwwwwwwwwww = -1L;
        }

        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, long j, float f, long j2) {
            this.f379Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f378Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
            this.f372Wwwwwwwwwwwwwwwwwwwwwwwwww = j2;
            this.f376Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = f;
            return this;
        }

        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, long j, float f) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, j, f, SystemClock.elapsedRealtime());
        }

        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
            this.f375Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
            return this;
        }

        public PlaybackStateCompat Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new PlaybackStateCompat(this.f379Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f378Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f377Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f376Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f375Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f374Wwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f373Wwwwwwwwwwwwwwwwwwwwwwwwwww, this.f372Wwwwwwwwwwwwwwwwwwwwwwwwww, this.f380Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f371Wwwwwwwwwwwwwwwwwwwwwwwww, this.f370Wwwwwwwwwwwwwwwwwwwwwwww);
        }

        public Builder(PlaybackStateCompat playbackStateCompat) {
            ArrayList arrayList = new ArrayList();
            this.f380Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = arrayList;
            this.f371Wwwwwwwwwwwwwwwwwwwwwwwww = -1L;
            this.f379Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = playbackStateCompat.f369Wwwwwwwwwwwwwwwwwwwwwwwww;
            this.f378Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = playbackStateCompat.f368Wwwwwwwwwwwwwwwwwwwwwwww;
            this.f376Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = playbackStateCompat.f366Wwwwwwwwwwwwwwwwwwwwww;
            this.f372Wwwwwwwwwwwwwwwwwwwwwwwwww = playbackStateCompat.f362Wwwwwwwwwwwwwwwwww;
            this.f377Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = playbackStateCompat.f367Wwwwwwwwwwwwwwwwwwwwwww;
            this.f375Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = playbackStateCompat.f365Wwwwwwwwwwwwwwwwwwwww;
            this.f374Wwwwwwwwwwwwwwwwwwwwwwwwwwww = playbackStateCompat.f364Wwwwwwwwwwwwwwwwwwww;
            this.f373Wwwwwwwwwwwwwwwwwwwwwwwwwww = playbackStateCompat.f363Wwwwwwwwwwwwwwwwwww;
            List<CustomAction> list = playbackStateCompat.f361Wwwwwwwwwwwwwwwww;
            if (list != null) {
                arrayList.addAll(list);
            }
            this.f371Wwwwwwwwwwwwwwwwwwwwwwwww = playbackStateCompat.f360Wwwwwwwwwwwwwwww;
            this.f370Wwwwwwwwwwwwwwwwwwwwwwww = playbackStateCompat.f359Wwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new Parcelable.Creator<CustomAction>() { // from class: android.support.v4.media.session.PlaybackStateCompat.CustomAction.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public CustomAction[] newArray(int i) {
                return new CustomAction[i];
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }
        };

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public PlaybackState.CustomAction f381Wwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Bundle f382Wwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f383Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final CharSequence f384Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f385Wwwwwwwwwwwwwwwwwwwwwwwww;

        /* compiled from: Proguard */
        /* loaded from: classes.dex */
        public static final class Builder {
        }

        public CustomAction(String str, CharSequence charSequence, int i, Bundle bundle) {
            this.f385Wwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f384Wwwwwwwwwwwwwwwwwwwwwwww = charSequence;
            this.f383Wwwwwwwwwwwwwwwwwwwwwww = i;
            this.f382Wwwwwwwwwwwwwwwwwwwwww = bundle;
        }

        public static CustomAction Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
            if (obj != null) {
                PlaybackState.CustomAction customAction = (PlaybackState.CustomAction) obj;
                Bundle Wwwwwwwwwwwwwwwwwwwwwww2 = Api21Impl.Wwwwwwwwwwwwwwwwwwwwwww(customAction);
                MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwww2);
                CustomAction customAction2 = new CustomAction(Api21Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(customAction), Api21Impl.Wwwwwwwwwwwwwwwwwwww(customAction), Api21Impl.Wwwwwwwwwwwwwwwwwwwwww(customAction), Wwwwwwwwwwwwwwwwwwwwwww2);
                customAction2.f381Wwwwwwwwwwwwwwwwwwwww = customAction;
                return customAction2;
            }
            return null;
        }

        public Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            PlaybackState.CustomAction customAction = this.f381Wwwwwwwwwwwwwwwwwwwww;
            if (customAction == null) {
                PlaybackState.CustomAction.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Api21Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f385Wwwwwwwwwwwwwwwwwwwwwwwww, this.f384Wwwwwwwwwwwwwwwwwwwwwwww, this.f383Wwwwwwwwwwwwwwwwwwwwwww);
                Api21Impl.Wwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f382Wwwwwwwwwwwwwwwwwwwwww);
                return Api21Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
            return customAction;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "Action:mName='" + ((Object) this.f384Wwwwwwwwwwwwwwwwwwwwwwww) + ", mIcon=" + this.f383Wwwwwwwwwwwwwwwwwwwwwww + ", mExtras=" + this.f382Wwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f385Wwwwwwwwwwwwwwwwwwwwwwwww);
            TextUtils.writeToParcel(this.f384Wwwwwwwwwwwwwwwwwwwwwwww, parcel, i);
            parcel.writeInt(this.f383Wwwwwwwwwwwwwwwwwwwwwww);
            parcel.writeBundle(this.f382Wwwwwwwwwwwwwwwwwwwwww);
        }

        public CustomAction(Parcel parcel) {
            this.f385Wwwwwwwwwwwwwwwwwwwwwwwww = parcel.readString();
            this.f384Wwwwwwwwwwwwwwwwwwwwwwww = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f383Wwwwwwwwwwwwwwwwwwwwwww = parcel.readInt();
            this.f382Wwwwwwwwwwwwwwwwwwwwww = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }
    }

    public PlaybackStateCompat(Parcel parcel) {
        this.f369Wwwwwwwwwwwwwwwwwwwwwwwww = parcel.readInt();
        this.f368Wwwwwwwwwwwwwwwwwwwwwwww = parcel.readLong();
        this.f366Wwwwwwwwwwwwwwwwwwwwww = parcel.readFloat();
        this.f362Wwwwwwwwwwwwwwwwww = parcel.readLong();
        this.f367Wwwwwwwwwwwwwwwwwwwwwww = parcel.readLong();
        this.f365Wwwwwwwwwwwwwwwwwwwww = parcel.readLong();
        this.f363Wwwwwwwwwwwwwwwwwww = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f361Wwwwwwwwwwwwwwwww = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.f360Wwwwwwwwwwwwwwww = parcel.readLong();
        this.f359Wwwwwwwwwwwwwww = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.f364Wwwwwwwwwwwwwwwwwwww = parcel.readInt();
    }
}
