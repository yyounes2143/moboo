package android.support.v4.media;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
/* compiled from: Proguard */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new Parcelable.Creator<MediaDescriptionCompat>() { // from class: android.support.v4.media.MediaDescriptionCompat.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public MediaDescriptionCompat[] newArray(int i) {
            return new MediaDescriptionCompat[i];
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return MediaDescriptionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaDescription.CREATOR.createFromParcel(parcel));
        }
    };

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MediaDescription f223Wwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Uri f224Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Bundle f225Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Uri f226Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Bitmap f227Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CharSequence f228Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CharSequence f229Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CharSequence f230Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f231Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static class Api21Impl {
        @DoNotInline
        public static void Wwwwwwwwwwwwwwwwwww(MediaDescription.Builder builder, @Nullable CharSequence charSequence) {
            builder.setTitle(charSequence);
        }

        @DoNotInline
        public static void Wwwwwwwwwwwwwwwwwwww(MediaDescription.Builder builder, @Nullable CharSequence charSequence) {
            builder.setSubtitle(charSequence);
        }

        @DoNotInline
        public static void Wwwwwwwwwwwwwwwwwwwww(MediaDescription.Builder builder, @Nullable String str) {
            builder.setMediaId(str);
        }

        @DoNotInline
        public static void Wwwwwwwwwwwwwwwwwwwwww(MediaDescription.Builder builder, @Nullable Uri uri) {
            builder.setIconUri(uri);
        }

        @DoNotInline
        public static void Wwwwwwwwwwwwwwwwwwwwwww(MediaDescription.Builder builder, @Nullable Bitmap bitmap) {
            builder.setIconBitmap(bitmap);
        }

        @DoNotInline
        public static void Wwwwwwwwwwwwwwwwwwwwwwww(MediaDescription.Builder builder, @Nullable Bundle bundle) {
            builder.setExtras(bundle);
        }

        @DoNotInline
        public static void Wwwwwwwwwwwwwwwwwwwwwwwww(MediaDescription.Builder builder, @Nullable CharSequence charSequence) {
            builder.setDescription(charSequence);
        }

        @Nullable
        @DoNotInline
        public static CharSequence Wwwwwwwwwwwwwwwwwwwwwwwwww(MediaDescription mediaDescription) {
            return mediaDescription.getTitle();
        }

        @Nullable
        @DoNotInline
        public static CharSequence Wwwwwwwwwwwwwwwwwwwwwwwwwww(MediaDescription mediaDescription) {
            return mediaDescription.getSubtitle();
        }

        @Nullable
        @DoNotInline
        public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaDescription mediaDescription) {
            return mediaDescription.getMediaId();
        }

        @Nullable
        @DoNotInline
        public static Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaDescription mediaDescription) {
            return mediaDescription.getIconUri();
        }

        @Nullable
        @DoNotInline
        public static Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaDescription mediaDescription) {
            return mediaDescription.getIconBitmap();
        }

        @Nullable
        @DoNotInline
        public static Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaDescription mediaDescription) {
            return mediaDescription.getExtras();
        }

        @Nullable
        @DoNotInline
        public static CharSequence Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaDescription mediaDescription) {
            return mediaDescription.getDescription();
        }

        @DoNotInline
        public static MediaDescription.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new MediaDescription.Builder();
        }

        @DoNotInline
        public static MediaDescription Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaDescription.Builder builder) {
            return builder.build();
        }
    }

    /* compiled from: Proguard */
    @RequiresApi(23)
    /* loaded from: classes.dex */
    public static class Api23Impl {
        @DoNotInline
        public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaDescription.Builder builder, @Nullable Uri uri) {
            builder.setMediaUri(uri);
        }

        @Nullable
        @DoNotInline
        public static Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaDescription mediaDescription) {
            return mediaDescription.getMediaUri();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Uri f232Wwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Bundle f233Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Uri f234Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Bitmap f235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public CharSequence f236Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public CharSequence f237Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public CharSequence f238Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f239Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable CharSequence charSequence) {
            this.f238Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = charSequence;
            return this;
        }

        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable CharSequence charSequence) {
            this.f237Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = charSequence;
            return this;
        }

        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Uri uri) {
            this.f232Wwwwwwwwwwwwwwwwwwwwwwwwwww = uri;
            return this;
        }

        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
            this.f239Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            return this;
        }

        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Uri uri) {
            this.f234Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = uri;
            return this;
        }

        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Bitmap bitmap) {
            this.f235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bitmap;
            return this;
        }

        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Bundle bundle) {
            this.f233Wwwwwwwwwwwwwwwwwwwwwwwwwwww = bundle;
            return this;
        }

        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable CharSequence charSequence) {
            this.f236Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = charSequence;
            return this;
        }

        public MediaDescriptionCompat Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new MediaDescriptionCompat(this.f239Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f238Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f237Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f236Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f234Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f233Wwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f232Wwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    public MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f231Wwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f230Wwwwwwwwwwwwwwwwwwwwwwww = charSequence;
        this.f229Wwwwwwwwwwwwwwwwwwwwwww = charSequence2;
        this.f228Wwwwwwwwwwwwwwwwwwwwww = charSequence3;
        this.f227Wwwwwwwwwwwwwwwwwwwww = bitmap;
        this.f226Wwwwwwwwwwwwwwwwwwww = uri;
        this.f225Wwwwwwwwwwwwwwwwwww = bundle;
        this.f224Wwwwwwwwwwwwwwwwww = uri2;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.support.v4.media.MediaDescriptionCompat Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(java.lang.Object r8) {
        /*
            r0 = 0
            if (r8 == 0) goto L79
            android.support.v4.media.MediaDescriptionCompat$Builder r1 = new android.support.v4.media.MediaDescriptionCompat$Builder
            r1.<init>()
            android.media.MediaDescription r8 = (android.media.MediaDescription) r8
            java.lang.String r2 = android.support.v4.media.MediaDescriptionCompat.Api21Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(r8)
            r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2)
            java.lang.CharSequence r2 = android.support.v4.media.MediaDescriptionCompat.Api21Impl.Wwwwwwwwwwwwwwwwwwwwwwwwww(r8)
            r1.Wwwwwwwwwwwwwwwwwwwwwwwwww(r2)
            java.lang.CharSequence r2 = android.support.v4.media.MediaDescriptionCompat.Api21Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwww(r8)
            r1.Wwwwwwwwwwwwwwwwwwwwwwwwwww(r2)
            java.lang.CharSequence r2 = android.support.v4.media.MediaDescriptionCompat.Api21Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r8)
            r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2)
            android.graphics.Bitmap r2 = android.support.v4.media.MediaDescriptionCompat.Api21Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r8)
            r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2)
            android.net.Uri r2 = android.support.v4.media.MediaDescriptionCompat.Api21Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(r8)
            r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2)
            android.os.Bundle r2 = android.support.v4.media.MediaDescriptionCompat.Api21Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r8)
            if (r2 == 0) goto L3e
            android.os.Bundle r2 = android.support.v4.media.session.MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwww(r2)
        L3e:
            java.lang.String r3 = "android.support.v4.media.description.MEDIA_URI"
            if (r2 == 0) goto L49
            android.os.Parcelable r4 = r2.getParcelable(r3)
            android.net.Uri r4 = (android.net.Uri) r4
            goto L4a
        L49:
            r4 = r0
        L4a:
            if (r4 == 0) goto L62
            java.lang.String r5 = "android.support.v4.media.description.NULL_BUNDLE_FLAG"
            boolean r6 = r2.containsKey(r5)
            if (r6 == 0) goto L5c
            int r6 = r2.size()
            r7 = 2
            if (r6 != r7) goto L5c
            goto L63
        L5c:
            r2.remove(r3)
            r2.remove(r5)
        L62:
            r0 = r2
        L63:
            r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)
            if (r4 == 0) goto L6c
            r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(r4)
            goto L73
        L6c:
            android.net.Uri r0 = android.support.v4.media.MediaDescriptionCompat.Api23Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r8)
            r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)
        L73:
            android.support.v4.media.MediaDescriptionCompat r0 = r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            r0.f223Wwwwwwwwwwwwwwwww = r8
        L79:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaDescriptionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(java.lang.Object):android.support.v4.media.MediaDescriptionCompat");
    }

    @Nullable
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f231Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        MediaDescription mediaDescription = this.f223Wwwwwwwwwwwwwwwww;
        if (mediaDescription == null) {
            MediaDescription.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Api21Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Api21Impl.Wwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f231Wwwwwwwwwwwwwwwwwwwwwwwww);
            Api21Impl.Wwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f230Wwwwwwwwwwwwwwwwwwwwwwww);
            Api21Impl.Wwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f229Wwwwwwwwwwwwwwwwwwwwwww);
            Api21Impl.Wwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f228Wwwwwwwwwwwwwwwwwwwwww);
            Api21Impl.Wwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f227Wwwwwwwwwwwwwwwwwwwww);
            Api21Impl.Wwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f226Wwwwwwwwwwwwwwwwwwww);
            Api21Impl.Wwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f225Wwwwwwwwwwwwwwwwwww);
            Api23Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f224Wwwwwwwwwwwwwwwwww);
            MediaDescription Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Api21Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            this.f223Wwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        return mediaDescription;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return ((Object) this.f230Wwwwwwwwwwwwwwwwwwwwwwww) + ", " + ((Object) this.f229Wwwwwwwwwwwwwwwwwwwwwww) + ", " + ((Object) this.f228Wwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((MediaDescription) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).writeToParcel(parcel, i);
    }
}
