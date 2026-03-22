package coil.drawable;

import android.content.res.ColorStateList;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import coil.decode.DecodeUtils;
import coil.size.Scale;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.ArrayList;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0015\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010!\n\u0002\b\u0016\u0018\u0000 {2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001{BE\b\u0007\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0001\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ#\u0010\u0011\u001a\u00020\b2\b\u0010\u000f\u001a\u0004\u0018\u00010\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\bH\u0017¢\u0006\u0004\b\u001f\u0010\u001bJ\u0011\u0010!\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0004\b!\u0010\"J\u0019\u0010$\u001a\u00020\u00132\b\u0010#\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0004\b$\u0010%J\u0017\u0010(\u001a\u00020\u00132\u0006\u0010'\u001a\u00020&H\u0014¢\u0006\u0004\b(\u0010)J\u0017\u0010+\u001a\u00020\n2\u0006\u0010*\u001a\u00020\bH\u0014¢\u0006\u0004\b+\u0010,J\u0017\u0010/\u001a\u00020\n2\u0006\u0010.\u001a\u00020-H\u0014¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020\bH\u0016¢\u0006\u0004\b1\u0010\u001bJ\u000f\u00102\u001a\u00020\bH\u0016¢\u0006\u0004\b2\u0010\u001bJ\u001f\u00106\u001a\u00020\u00132\u0006\u00103\u001a\u00020\u00012\u0006\u00105\u001a\u000204H\u0016¢\u0006\u0004\b6\u00107J\u0017\u00108\u001a\u00020\u00132\u0006\u00103\u001a\u00020\u0001H\u0016¢\u0006\u0004\b8\u00109J'\u0010<\u001a\u00020\u00132\u0006\u00103\u001a\u00020\u00012\u0006\u00105\u001a\u0002042\u0006\u0010;\u001a\u00020:H\u0016¢\u0006\u0004\b<\u0010=J\u0017\u0010?\u001a\u00020\u00132\u0006\u0010>\u001a\u00020\bH\u0016¢\u0006\u0004\b?\u0010\u001eJ\u0019\u0010B\u001a\u00020\u00132\b\u0010A\u001a\u0004\u0018\u00010@H\u0016¢\u0006\u0004\bB\u0010CJ\u0019\u0010F\u001a\u00020\u00132\b\u0010E\u001a\u0004\u0018\u00010DH\u0016¢\u0006\u0004\bF\u0010GJ\u0019\u0010J\u001a\u00020\u00132\b\u0010I\u001a\u0004\u0018\u00010HH\u0017¢\u0006\u0004\bJ\u0010KJ\u000f\u0010L\u001a\u00020\nH\u0016¢\u0006\u0004\bL\u0010MJ\u000f\u0010\u0004\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0004\u0010\u0015J\u000f\u0010N\u001a\u00020\u0013H\u0016¢\u0006\u0004\bN\u0010\u0015J\u0017\u0010Q\u001a\u00020\u00132\u0006\u0010P\u001a\u00020OH\u0016¢\u0006\u0004\bQ\u0010RJ\u0017\u0010S\u001a\u00020\n2\u0006\u0010P\u001a\u00020OH\u0016¢\u0006\u0004\bS\u0010TJ\u000f\u0010U\u001a\u00020\u0013H\u0016¢\u0006\u0004\bU\u0010\u0015J\u001f\u0010X\u001a\u00020\u00132\u0006\u0010V\u001a\u00020\u00012\u0006\u0010W\u001a\u00020&H\u0001¢\u0006\u0004\bX\u0010YR\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\bZ\u0010[\u001a\u0004\b\\\u0010]R\u0017\u0010\t\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b^\u0010_\u001a\u0004\b`\u0010\u001bR\u0017\u0010\u000b\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\ba\u0010b\u001a\u0004\bc\u0010MR\u0017\u0010\f\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\bd\u0010b\u001a\u0004\be\u0010MR\u001a\u0010i\u001a\b\u0012\u0004\u0012\u00020O0f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bg\u0010hR\u0014\u0010k\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bj\u0010_R\u0014\u0010m\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bl\u0010_R\u0016\u0010p\u001a\u00020:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010oR\u0016\u0010r\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bq\u0010_R\u0016\u0010.\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010_R(\u0010\u0004\u001a\u0004\u0018\u00010\u00012\b\u0010t\u001a\u0004\u0018\u00010\u00018\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bu\u0010v\u001a\u0004\bw\u0010xR\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00018\u0006¢\u0006\f\n\u0004\by\u0010v\u001a\u0004\bz\u0010x¨\u0006|"}, d2 = {"Lcoil/drawable/CrossfadeDrawable;", "Landroid/graphics/drawable/Drawable;", "Landroid/graphics/drawable/Drawable$Callback;", "Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;", "start", "end", "Lcoil/size/Scale;", "scale", "", "durationMillis", "", "fadeStart", "preferExactIntrinsicSize", "<init>", "(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/size/Scale;IZZ)V", "startSize", "endSize", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Integer;Ljava/lang/Integer;)I", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Landroid/graphics/Canvas;", "canvas", "draw", "(Landroid/graphics/Canvas;)V", "getAlpha", "()I", "alpha", "setAlpha", "(I)V", "getOpacity", "Landroid/graphics/ColorFilter;", "getColorFilter", "()Landroid/graphics/ColorFilter;", "colorFilter", "setColorFilter", "(Landroid/graphics/ColorFilter;)V", "Landroid/graphics/Rect;", "bounds", "onBoundsChange", "(Landroid/graphics/Rect;)V", "level", "onLevelChange", "(I)Z", "", "state", "onStateChange", "([I)Z", "getIntrinsicWidth", "getIntrinsicHeight", "who", "Ljava/lang/Runnable;", "what", "unscheduleDrawable", "(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V", "invalidateDrawable", "(Landroid/graphics/drawable/Drawable;)V", "", "when", "scheduleDrawable", "(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V", "tintColor", "setTint", "Landroid/content/res/ColorStateList;", "tint", "setTintList", "(Landroid/content/res/ColorStateList;)V", "Landroid/graphics/PorterDuff$Mode;", "tintMode", "setTintMode", "(Landroid/graphics/PorterDuff$Mode;)V", "Landroid/graphics/BlendMode;", "blendMode", "setTintBlendMode", "(Landroid/graphics/BlendMode;)V", "isRunning", "()Z", "stop", "Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;", "callback", "registerAnimationCallback", "(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V", "unregisterAnimationCallback", "(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z", "clearAnimationCallbacks", "drawable", "targetBounds", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/size/Scale;", "getScale", "()Lcoil/size/Scale;", "Wwwwwwwwwwwwwwwwwwwwwwww", "I", "getDurationMillis", "Wwwwwwwwwwwwwwwwwwwwwww", "Z", "getFadeStart", "Wwwwwwwwwwwwwwwwwwwwww", "getPreferExactIntrinsicSize", "", "Wwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "callbacks", "Wwwwwwwwwwwwwwwwwwww", "intrinsicWidth", "Wwwwwwwwwwwwwwwwwww", "intrinsicHeight", "Wwwwwwwwwwwwwwwwww", "J", "startTimeMillis", "Wwwwwwwwwwwwwwwww", "maxAlpha", "Wwwwwwwwwwwwwwww", "<set-?>", "Wwwwwwwwwwwwwww", "Landroid/graphics/drawable/Drawable;", "getStart", "()Landroid/graphics/drawable/Drawable;", "Wwwwwwwwwwwwww", "getEnd", "Companion", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class CrossfadeDrawable extends Drawable implements Drawable.Callback, Animatable2Compat {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public final Drawable f1894Wwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public Drawable f1895Wwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f1896Wwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f1897Wwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f1898Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f1899Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f1900Wwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Animatable2Compat.AnimationCallback> f1901Wwwwwwwwwwwwwwwwwwwww = new ArrayList();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f1902Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f1903Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f1904Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Scale f1905Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcoil/drawable/CrossfadeDrawable$Companion;", "", "()V", "DEFAULT_DURATION", "", "STATE_DONE", "STATE_RUNNING", "STATE_START", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    @JvmOverloads
    public CrossfadeDrawable(@Nullable Drawable drawable, @Nullable Drawable drawable2, @NotNull Scale scale, int i, boolean z, boolean z2) {
        Integer num;
        Integer num2;
        Integer num3;
        Integer num4;
        Drawable drawable3;
        this.f1905Wwwwwwwwwwwwwwwwwwwwwwwww = scale;
        this.f1904Wwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f1903Wwwwwwwwwwwwwwwwwwwwwww = z;
        this.f1902Wwwwwwwwwwwwwwwwwwwwww = z2;
        if (drawable != null) {
            num = Integer.valueOf(drawable.getIntrinsicWidth());
        } else {
            num = null;
        }
        if (drawable2 != null) {
            num2 = Integer.valueOf(drawable2.getIntrinsicWidth());
        } else {
            num2 = null;
        }
        this.f1900Wwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(num, num2);
        if (drawable != null) {
            num3 = Integer.valueOf(drawable.getIntrinsicHeight());
        } else {
            num3 = null;
        }
        if (drawable2 != null) {
            num4 = Integer.valueOf(drawable2.getIntrinsicHeight());
        } else {
            num4 = null;
        }
        this.f1899Wwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(num3, num4);
        this.f1897Wwwwwwwwwwwwwwwww = 255;
        if (drawable != null) {
            drawable3 = drawable.mutate();
        } else {
            drawable3 = null;
        }
        this.f1895Wwwwwwwwwwwwwww = drawable3;
        Drawable mutate = drawable2 != null ? drawable2.mutate() : null;
        this.f1894Wwwwwwwwwwwwww = mutate;
        if (i > 0) {
            Drawable drawable4 = this.f1895Wwwwwwwwwwwwwww;
            if (drawable4 != null) {
                drawable4.setCallback(this);
            }
            if (mutate == null) {
                return;
            }
            mutate.setCallback(this);
            return;
        }
        throw new IllegalArgumentException("durationMillis must be > 0.");
    }

    @VisibleForTesting
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Drawable drawable, @NotNull Rect rect) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth > 0 && intrinsicHeight > 0) {
            int width = rect.width();
            int height = rect.height();
            double Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DecodeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(intrinsicWidth, intrinsicHeight, width, height, this.f1905Wwwwwwwwwwwwwwwwwwwwwwwww);
            double d = 2;
            int roundToInt = MathKt.roundToInt((width - (intrinsicWidth * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) / d);
            int roundToInt2 = MathKt.roundToInt((height - (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 * intrinsicHeight)) / d);
            drawable.setBounds(rect.left + roundToInt, rect.top + roundToInt2, rect.right - roundToInt, rect.bottom - roundToInt2);
            return;
        }
        drawable.setBounds(rect);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f1896Wwwwwwwwwwwwwwww = 2;
        this.f1895Wwwwwwwwwwwwwww = null;
        List<Animatable2Compat.AnimationCallback> list = this.f1901Wwwwwwwwwwwwwwwwwwwww;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            list.get(i).onAnimationEnd(this);
        }
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Integer num, Integer num2) {
        int i;
        int i2 = -1;
        if (!this.f1902Wwwwwwwwwwwwwwwwwwwwww && ((num != null && num.intValue() == -1) || (num2 != null && num2.intValue() == -1))) {
            return -1;
        }
        if (num != null) {
            i = num.intValue();
        } else {
            i = -1;
        }
        if (num2 != null) {
            i2 = num2.intValue();
        }
        return Math.max(i, i2);
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void clearAnimationCallbacks() {
        this.f1901Wwwwwwwwwwwwwwwwwwwww.clear();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NotNull Canvas canvas) {
        boolean z;
        int save;
        Drawable drawable;
        int i = this.f1896Wwwwwwwwwwwwwwww;
        if (i == 0) {
            Drawable drawable2 = this.f1895Wwwwwwwwwwwwwww;
            if (drawable2 != null) {
                drawable2.setAlpha(this.f1897Wwwwwwwwwwwwwwwww);
                save = canvas.save();
                try {
                    drawable2.draw(canvas);
                } finally {
                }
            }
        } else if (i == 2) {
            Drawable drawable3 = this.f1894Wwwwwwwwwwwwww;
            if (drawable3 != null) {
                drawable3.setAlpha(this.f1897Wwwwwwwwwwwwwwwww);
                save = canvas.save();
                try {
                    drawable3.draw(canvas);
                } finally {
                }
            }
        } else {
            double uptimeMillis = (SystemClock.uptimeMillis() - this.f1898Wwwwwwwwwwwwwwwwww) / this.f1904Wwwwwwwwwwwwwwwwwwwwwwww;
            double coerceIn = RangesKt.coerceIn(uptimeMillis, (double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE, 1.0d);
            int i2 = this.f1897Wwwwwwwwwwwwwwwww;
            int i3 = (int) (coerceIn * i2);
            if (this.f1903Wwwwwwwwwwwwwwwwwwwwwww) {
                i2 -= i3;
            }
            if (uptimeMillis >= 1.0d) {
                z = true;
            } else {
                z = false;
            }
            if (!z && (drawable = this.f1895Wwwwwwwwwwwwwww) != null) {
                drawable.setAlpha(i2);
                save = canvas.save();
                try {
                    drawable.draw(canvas);
                } finally {
                }
            }
            Drawable drawable4 = this.f1894Wwwwwwwwwwwwww;
            if (drawable4 != null) {
                drawable4.setAlpha(i3);
                save = canvas.save();
                try {
                    drawable4.draw(canvas);
                } finally {
                }
            }
            if (z) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            } else {
                invalidateSelf();
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f1897Wwwwwwwwwwwwwwwww;
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public ColorFilter getColorFilter() {
        ColorFilter colorFilter;
        Drawable drawable;
        int i = this.f1896Wwwwwwwwwwwwwwww;
        if (i != 0) {
            if (i != 1) {
                if (i != 2 || (drawable = this.f1894Wwwwwwwwwwwwww) == null) {
                    return null;
                }
                return drawable.getColorFilter();
            }
            Drawable drawable2 = this.f1894Wwwwwwwwwwwwww;
            if (drawable2 != null && (colorFilter = drawable2.getColorFilter()) != null) {
                return colorFilter;
            }
            Drawable drawable3 = this.f1895Wwwwwwwwwwwwwww;
            if (drawable3 == null) {
                return null;
            }
            return drawable3.getColorFilter();
        }
        Drawable drawable4 = this.f1895Wwwwwwwwwwwwwww;
        if (drawable4 == null) {
            return null;
        }
        return drawable4.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f1899Wwwwwwwwwwwwwwwwwww;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f1900Wwwwwwwwwwwwwwwwwwww;
    }

    @Override // android.graphics.drawable.Drawable
    @Deprecated(message = "Deprecated in Java")
    public int getOpacity() {
        Drawable drawable = this.f1895Wwwwwwwwwwwwwww;
        Drawable drawable2 = this.f1894Wwwwwwwwwwwwww;
        int i = this.f1896Wwwwwwwwwwwwwwww;
        if (i == 0) {
            if (drawable == null) {
                return -2;
            }
            return drawable.getOpacity();
        } else if (i == 2) {
            if (drawable2 == null) {
                return -2;
            }
            return drawable2.getOpacity();
        } else if (drawable != null && drawable2 != null) {
            return Drawable.resolveOpacity(drawable.getOpacity(), drawable2.getOpacity());
        } else {
            if (drawable != null) {
                return drawable.getOpacity();
            }
            if (drawable2 == null) {
                return -2;
            }
            return drawable2.getOpacity();
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NotNull Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        if (this.f1896Wwwwwwwwwwwwwwww == 1) {
            return true;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(@NotNull Rect rect) {
        Drawable drawable = this.f1895Wwwwwwwwwwwwwww;
        if (drawable != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(drawable, rect);
        }
        Drawable drawable2 = this.f1894Wwwwwwwwwwwwww;
        if (drawable2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(drawable2, rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        boolean z;
        boolean z2;
        Drawable drawable = this.f1895Wwwwwwwwwwwwwww;
        if (drawable != null) {
            z = drawable.setLevel(i);
        } else {
            z = false;
        }
        Drawable drawable2 = this.f1894Wwwwwwwwwwwwww;
        if (drawable2 != null) {
            z2 = drawable2.setLevel(i);
        } else {
            z2 = false;
        }
        if (!z && !z2) {
            return false;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(@NotNull int[] iArr) {
        boolean z;
        boolean z2;
        Drawable drawable = this.f1895Wwwwwwwwwwwwwww;
        if (drawable != null) {
            z = drawable.setState(iArr);
        } else {
            z = false;
        }
        Drawable drawable2 = this.f1894Wwwwwwwwwwwwww;
        if (drawable2 != null) {
            z2 = drawable2.setState(iArr);
        } else {
            z2 = false;
        }
        if (!z && !z2) {
            return false;
        }
        return true;
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void registerAnimationCallback(@NotNull Animatable2Compat.AnimationCallback animationCallback) {
        this.f1901Wwwwwwwwwwwwwwwwwwwww.add(animationCallback);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NotNull Drawable drawable, @NotNull Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (i >= 0 && i < 256) {
            this.f1897Wwwwwwwwwwwwwwwww = i;
            return;
        }
        throw new IllegalArgumentException(("Invalid alpha: " + i).toString());
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        Drawable drawable = this.f1895Wwwwwwwwwwwwwww;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
        Drawable drawable2 = this.f1894Wwwwwwwwwwwwww;
        if (drawable2 == null) {
            return;
        }
        drawable2.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i) {
        Drawable drawable = this.f1895Wwwwwwwwwwwwwww;
        if (drawable != null) {
            drawable.setTint(i);
        }
        Drawable drawable2 = this.f1894Wwwwwwwwwwwwww;
        if (drawable2 != null) {
            drawable2.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(29)
    public void setTintBlendMode(@Nullable BlendMode blendMode) {
        Drawable drawable = this.f1895Wwwwwwwwwwwwwww;
        if (drawable != null) {
            drawable.setTintBlendMode(blendMode);
        }
        Drawable drawable2 = this.f1894Wwwwwwwwwwwwww;
        if (drawable2 != null) {
            drawable2.setTintBlendMode(blendMode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        Drawable drawable = this.f1895Wwwwwwwwwwwwwww;
        if (drawable != null) {
            drawable.setTintList(colorStateList);
        }
        Drawable drawable2 = this.f1894Wwwwwwwwwwwwww;
        if (drawable2 != null) {
            drawable2.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(@Nullable PorterDuff.Mode mode) {
        Drawable drawable = this.f1895Wwwwwwwwwwwwwww;
        if (drawable != null) {
            drawable.setTintMode(mode);
        }
        Drawable drawable2 = this.f1894Wwwwwwwwwwwwww;
        if (drawable2 != null) {
            drawable2.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Animatable animatable;
        Drawable drawable = this.f1895Wwwwwwwwwwwwwww;
        Animatable animatable2 = null;
        if (drawable instanceof Animatable) {
            animatable = (Animatable) drawable;
        } else {
            animatable = null;
        }
        if (animatable != null) {
            animatable.start();
        }
        Drawable drawable2 = this.f1894Wwwwwwwwwwwwww;
        if (drawable2 instanceof Animatable) {
            animatable2 = (Animatable) drawable2;
        }
        if (animatable2 != null) {
            animatable2.start();
        }
        if (this.f1896Wwwwwwwwwwwwwwww != 0) {
            return;
        }
        this.f1896Wwwwwwwwwwwwwwww = 1;
        this.f1898Wwwwwwwwwwwwwwwwww = SystemClock.uptimeMillis();
        List<Animatable2Compat.AnimationCallback> list = this.f1901Wwwwwwwwwwwwwwwwwwwww;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            list.get(i).onAnimationStart(this);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        Animatable animatable;
        Drawable drawable = this.f1895Wwwwwwwwwwwwwww;
        Animatable animatable2 = null;
        if (drawable instanceof Animatable) {
            animatable = (Animatable) drawable;
        } else {
            animatable = null;
        }
        if (animatable != null) {
            animatable.stop();
        }
        Drawable drawable2 = this.f1894Wwwwwwwwwwwwww;
        if (drawable2 instanceof Animatable) {
            animatable2 = (Animatable) drawable2;
        }
        if (animatable2 != null) {
            animatable2.stop();
        }
        if (this.f1896Wwwwwwwwwwwwwwww != 2) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public boolean unregisterAnimationCallback(@NotNull Animatable2Compat.AnimationCallback animationCallback) {
        return this.f1901Wwwwwwwwwwwwwwwwwwwww.remove(animationCallback);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NotNull Drawable drawable, @NotNull Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
