package android.support.v4.media;

import android.annotation.SuppressLint;
import android.media.Rating;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* compiled from: Proguard */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new Parcelable.Creator<RatingCompat>() { // from class: android.support.v4.media.RatingCompat.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public RatingCompat[] newArray(int i) {
            return new RatingCompat[i];
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public RatingCompat createFromParcel(Parcel parcel) {
            return new RatingCompat(parcel.readInt(), parcel.readFloat());
        }
    };

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Object f247Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final float f248Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f249Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @RequiresApi(19)
    /* loaded from: classes.dex */
    public static class Api19Impl {
        @DoNotInline
        public static Rating Wwwwwwwwwwwwwwwwwwwwwwww(int i) {
            return Rating.newUnratedRating(i);
        }

        @DoNotInline
        public static Rating Wwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            return Rating.newThumbRating(z);
        }

        @DoNotInline
        public static Rating Wwwwwwwwwwwwwwwwwwwwwwwwww(int i, float f) {
            return Rating.newStarRating(i, f);
        }

        @DoNotInline
        public static Rating Wwwwwwwwwwwwwwwwwwwwwwwwwww(float f) {
            return Rating.newPercentageRating(f);
        }

        @DoNotInline
        public static Rating Wwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            return Rating.newHeartRating(z);
        }

        @DoNotInline
        public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Rating rating) {
            return rating.isThumbUp();
        }

        @DoNotInline
        public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Rating rating) {
            return rating.isRated();
        }

        @DoNotInline
        public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Rating rating) {
            return rating.hasHeart();
        }

        @DoNotInline
        public static float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Rating rating) {
            return rating.getStarRating();
        }

        @DoNotInline
        public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Rating rating) {
            return rating.getRatingStyle();
        }

        @DoNotInline
        public static float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Rating rating) {
            return rating.getPercentRating();
        }
    }

    /* compiled from: Proguard */
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public @interface StarStyle {
    }

    /* compiled from: Proguard */
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface Style {
    }

    public RatingCompat(int i, float f) {
        this.f249Wwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f248Wwwwwwwwwwwwwwwwwwwwwwww = f;
    }

    public static RatingCompat Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return new RatingCompat(i, -1.0f);
            default:
                return null;
        }
    }

    public static RatingCompat Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        float f;
        if (z) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        return new RatingCompat(2, f);
    }

    public static RatingCompat Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, float f) {
        float f2;
        if (i != 3) {
            if (i != 4) {
                if (i != 5) {
                    return null;
                }
                f2 = 5.0f;
            } else {
                f2 = 4.0f;
            }
        } else {
            f2 = 3.0f;
        }
        if (f < 0.0f || f > f2) {
            return null;
        }
        return new RatingCompat(i, f);
    }

    public static RatingCompat Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(float f) {
        if (f >= 0.0f && f <= 100.0f) {
            return new RatingCompat(6, f);
        }
        return null;
    }

    public static RatingCompat Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        float f;
        if (z) {
            f = 1.0f;
        } else {
            f = 0.0f;
        }
        return new RatingCompat(1, f);
    }

    public static RatingCompat Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        RatingCompat ratingCompat = null;
        if (obj != null) {
            Rating rating = (Rating) obj;
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Api19Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(rating);
            if (Api19Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(rating)) {
                switch (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                    case 1:
                        ratingCompat = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Api19Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(rating));
                        break;
                    case 2:
                        ratingCompat = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Api19Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(rating));
                        break;
                    case 3:
                    case 4:
                    case 5:
                        ratingCompat = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Api19Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(rating));
                        break;
                    case 6:
                        ratingCompat = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Api19Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(rating));
                        break;
                    default:
                        return null;
                }
            } else {
                ratingCompat = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
            ratingCompat.f247Wwwwwwwwwwwwwwwwwwwwwww = obj;
        }
        return ratingCompat;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return this.f249Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String toString() {
        String valueOf;
        StringBuilder sb = new StringBuilder();
        sb.append("Rating:style=");
        sb.append(this.f249Wwwwwwwwwwwwwwwwwwwwwwwww);
        sb.append(" rating=");
        float f = this.f248Wwwwwwwwwwwwwwwwwwwwwwww;
        if (f < 0.0f) {
            valueOf = "unrated";
        } else {
            valueOf = String.valueOf(f);
        }
        sb.append(valueOf);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f249Wwwwwwwwwwwwwwwwwwwwwwwww);
        parcel.writeFloat(this.f248Wwwwwwwwwwwwwwwwwwwwwwww);
    }
}
