package android.support.v4.media;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.media.MediaMetadata;
import android.media.Rating;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.media.utils.MediaConstants;
/* compiled from: Proguard */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class MediaMetadataCompat implements Parcelable {
    public static final Parcelable.Creator<MediaMetadataCompat> CREATOR;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String[] f240Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String[] f241Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String[] f242Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ArrayMap<String, Integer> f243Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MediaMetadata f244Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Bundle f245Wwwwwwwwwwwwwwwwwwwwwwwww;

    static {
        ArrayMap<String, Integer> arrayMap = new ArrayMap<>();
        f243Wwwwwwwwwwwwwwwwwwwwwww = arrayMap;
        arrayMap.put("android.media.metadata.TITLE", 1);
        arrayMap.put("android.media.metadata.ARTIST", 1);
        arrayMap.put("android.media.metadata.DURATION", 0);
        arrayMap.put("android.media.metadata.ALBUM", 1);
        arrayMap.put("android.media.metadata.AUTHOR", 1);
        arrayMap.put("android.media.metadata.WRITER", 1);
        arrayMap.put("android.media.metadata.COMPOSER", 1);
        arrayMap.put("android.media.metadata.COMPILATION", 1);
        arrayMap.put("android.media.metadata.DATE", 1);
        arrayMap.put("android.media.metadata.YEAR", 0);
        arrayMap.put("android.media.metadata.GENRE", 1);
        arrayMap.put("android.media.metadata.TRACK_NUMBER", 0);
        arrayMap.put("android.media.metadata.NUM_TRACKS", 0);
        arrayMap.put("android.media.metadata.DISC_NUMBER", 0);
        arrayMap.put("android.media.metadata.ALBUM_ARTIST", 1);
        arrayMap.put("android.media.metadata.ART", 2);
        arrayMap.put("android.media.metadata.ART_URI", 1);
        arrayMap.put("android.media.metadata.ALBUM_ART", 2);
        arrayMap.put("android.media.metadata.ALBUM_ART_URI", 1);
        arrayMap.put("android.media.metadata.USER_RATING", 3);
        arrayMap.put("android.media.metadata.RATING", 3);
        arrayMap.put("android.media.metadata.DISPLAY_TITLE", 1);
        arrayMap.put("android.media.metadata.DISPLAY_SUBTITLE", 1);
        arrayMap.put("android.media.metadata.DISPLAY_DESCRIPTION", 1);
        arrayMap.put("android.media.metadata.DISPLAY_ICON", 2);
        arrayMap.put("android.media.metadata.DISPLAY_ICON_URI", 1);
        arrayMap.put("android.media.metadata.MEDIA_ID", 1);
        arrayMap.put("android.media.metadata.BT_FOLDER_TYPE", 0);
        arrayMap.put("android.media.metadata.MEDIA_URI", 1);
        arrayMap.put(MediaConstants.METADATA_KEY_IS_ADVERTISEMENT, 0);
        arrayMap.put("android.media.metadata.DOWNLOAD_STATUS", 0);
        f242Wwwwwwwwwwwwwwwwwwwwww = new String[]{"android.media.metadata.TITLE", "android.media.metadata.ARTIST", "android.media.metadata.ALBUM", "android.media.metadata.ALBUM_ARTIST", "android.media.metadata.WRITER", "android.media.metadata.AUTHOR", "android.media.metadata.COMPOSER"};
        f241Wwwwwwwwwwwwwwwwwwwww = new String[]{"android.media.metadata.DISPLAY_ICON", "android.media.metadata.ART", "android.media.metadata.ALBUM_ART"};
        f240Wwwwwwwwwwwwwwwwwwww = new String[]{"android.media.metadata.DISPLAY_ICON_URI", "android.media.metadata.ART_URI", "android.media.metadata.ALBUM_ART_URI"};
        CREATOR = new Parcelable.Creator<MediaMetadataCompat>() { // from class: android.support.v4.media.MediaMetadataCompat.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public MediaMetadataCompat[] newArray(int i) {
                return new MediaMetadataCompat[i];
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public MediaMetadataCompat createFromParcel(Parcel parcel) {
                return new MediaMetadataCompat(parcel);
            }
        };
    }

    public MediaMetadataCompat(Bundle bundle) {
        Bundle bundle2 = new Bundle(bundle);
        this.f245Wwwwwwwwwwwwwwwwwwwwwwwww = bundle2;
        MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle2);
    }

    public static MediaMetadataCompat Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        if (obj != null) {
            Parcel obtain = Parcel.obtain();
            MediaMetadata mediaMetadata = (MediaMetadata) obj;
            mediaMetadata.writeToParcel(obtain, 0);
            obtain.setDataPosition(0);
            MediaMetadataCompat createFromParcel = CREATOR.createFromParcel(obtain);
            obtain.recycle();
            createFromParcel.f244Wwwwwwwwwwwwwwwwwwwwwwww = mediaMetadata;
            return createFromParcel;
        }
        return null;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        CharSequence charSequence = this.f245Wwwwwwwwwwwwwwwwwwwwwwwww.getCharSequence(str);
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    public Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f244Wwwwwwwwwwwwwwwwwwwwwwww == null) {
            MediaMetadata.Builder builder = new MediaMetadata.Builder();
            for (String str : this.f245Wwwwwwwwwwwwwwwwwwwwwwwww.keySet()) {
                Integer num = f243Wwwwwwwwwwwwwwwwwwwwwww.get(str);
                if (num == null) {
                    num = -1;
                }
                int intValue = num.intValue();
                if (intValue != 0) {
                    if (intValue != 1) {
                        if (intValue != 2) {
                            if (intValue != 3) {
                                Object obj = this.f245Wwwwwwwwwwwwwwwwwwwwwwwww.get(str);
                                if (obj != null && !(obj instanceof CharSequence)) {
                                    if (obj instanceof Long) {
                                        builder.putLong(str, ((Long) obj).longValue());
                                    } else if (obj instanceof Bitmap) {
                                        builder.putBitmap(str, (Bitmap) obj);
                                    } else if (obj instanceof Rating) {
                                        builder.putRating(str, (Rating) obj);
                                    }
                                } else {
                                    builder.putText(str, (CharSequence) obj);
                                }
                            } else {
                                builder.putRating(str, (Rating) this.f245Wwwwwwwwwwwwwwwwwwwwwwwww.getParcelable(str));
                            }
                        } else {
                            builder.putBitmap(str, (Bitmap) this.f245Wwwwwwwwwwwwwwwwwwwwwwwww.getParcelable(str));
                        }
                    } else {
                        builder.putText(str, this.f245Wwwwwwwwwwwwwwwwwwwwwwwww.getCharSequence(str));
                    }
                } else {
                    builder.putLong(str, this.f245Wwwwwwwwwwwwwwwwwwwwwwwww.getLong(str, 0L));
                }
            }
            this.f244Wwwwwwwwwwwwwwwwwwwwwwww = builder.build();
        }
        return this.f244Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return this.f245Wwwwwwwwwwwwwwwwwwwwwwwww.getLong(str, 0L);
    }

    public Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new Bundle(this.f245Wwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return this.f245Wwwwwwwwwwwwwwwwwwwwwwwww.containsKey(str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f245Wwwwwwwwwwwwwwwwwwwwwwwww);
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Bundle f246Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Builder() {
            this.f246Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Bundle();
        }

        public final Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap, int i) {
            float f = i;
            float min = Math.min(f / bitmap.getWidth(), f / bitmap.getHeight());
            return Bitmap.createScaledBitmap(bitmap, (int) (bitmap.getWidth() * min), (int) (bitmap.getHeight() * min), true);
        }

        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2) {
            ArrayMap<String, Integer> arrayMap = MediaMetadataCompat.f243Wwwwwwwwwwwwwwwwwwwwwww;
            if (arrayMap.containsKey(str) && arrayMap.get(str).intValue() != 1) {
                throw new IllegalArgumentException("The " + str + " key cannot be used to put a String");
            }
            this.f246Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.putCharSequence(str, str2);
            return this;
        }

        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, long j) {
            ArrayMap<String, Integer> arrayMap = MediaMetadataCompat.f243Wwwwwwwwwwwwwwwwwwwwwww;
            if (arrayMap.containsKey(str) && arrayMap.get(str).intValue() != 0) {
                throw new IllegalArgumentException("The " + str + " key cannot be used to put a long");
            }
            this.f246Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.putLong(str, j);
            return this;
        }

        public Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, Bitmap bitmap) {
            ArrayMap<String, Integer> arrayMap = MediaMetadataCompat.f243Wwwwwwwwwwwwwwwwwwwwwww;
            if (arrayMap.containsKey(str) && arrayMap.get(str).intValue() != 2) {
                throw new IllegalArgumentException("The " + str + " key cannot be used to put a Bitmap");
            }
            this.f246Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.putParcelable(str, bitmap);
            return this;
        }

        public MediaMetadataCompat Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new MediaMetadataCompat(this.f246Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        public Builder(MediaMetadataCompat mediaMetadataCompat) {
            Bundle bundle = new Bundle(mediaMetadataCompat.f245Wwwwwwwwwwwwwwwwwwwwwwwww);
            this.f246Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bundle;
            MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public Builder(MediaMetadataCompat mediaMetadataCompat, int i) {
            this(mediaMetadataCompat);
            for (String str : this.f246Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.keySet()) {
                Object obj = this.f246Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
                if (obj instanceof Bitmap) {
                    Bitmap bitmap = (Bitmap) obj;
                    if (bitmap.getHeight() > i || bitmap.getWidth() > i) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap, i));
                    }
                }
            }
        }
    }

    public MediaMetadataCompat(Parcel parcel) {
        this.f245Wwwwwwwwwwwwwwwwwwwwwwwww = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
    }
}
