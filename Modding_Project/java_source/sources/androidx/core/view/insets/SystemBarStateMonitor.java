package androidx.core.view.insets;

import android.content.res.Configuration;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes.dex */
public class SystemBarStateMonitor {
    private final ArrayList<Callback> mCallbacks = new ArrayList<>();
    private int mColorHint;
    private final View mDetector;
    private Insets mInsets;
    private Insets mInsetsIgnoringVisibility;

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public interface Callback {
        void onAnimationEnd();

        void onAnimationProgress(int i, Insets insets, RectF rectF);

        void onAnimationStart();

        void onColorHintChanged(int i);

        void onInsetsChanged(Insets insets, Insets insets2);
    }

    public SystemBarStateMonitor(final ViewGroup viewGroup) {
        int i;
        Insets insets = Insets.NONE;
        this.mInsets = insets;
        this.mInsetsIgnoringVisibility = insets;
        Drawable background = viewGroup.getBackground();
        if (background instanceof ColorDrawable) {
            i = ((ColorDrawable) background).getColor();
        } else {
            i = 0;
        }
        this.mColorHint = i;
        View view = new View(viewGroup.getContext()) { // from class: androidx.core.view.insets.SystemBarStateMonitor.1
            @Override // android.view.View
            public void onConfigurationChanged(Configuration configuration) {
                int i2;
                Drawable background2 = viewGroup.getBackground();
                if (background2 instanceof ColorDrawable) {
                    i2 = ((ColorDrawable) background2).getColor();
                } else {
                    i2 = 0;
                }
                if (SystemBarStateMonitor.this.mColorHint != i2) {
                    SystemBarStateMonitor.this.mColorHint = i2;
                    for (int size = SystemBarStateMonitor.this.mCallbacks.size() - 1; size >= 0; size--) {
                        ((Callback) SystemBarStateMonitor.this.mCallbacks.get(size)).onColorHintChanged(i2);
                    }
                }
            }
        };
        this.mDetector = view;
        view.setWillNotDraw(true);
        ViewCompat.setOnApplyWindowInsetsListener(view, new OnApplyWindowInsetsListener() { // from class: androidx.core.view.insets.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                return SystemBarStateMonitor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SystemBarStateMonitor.this, view2, windowInsetsCompat);
            }
        });
        ViewCompat.setWindowInsetsAnimationCallback(view, new WindowInsetsAnimationCompat.Callback(0) { // from class: androidx.core.view.insets.SystemBarStateMonitor.2
            private final HashMap<WindowInsetsAnimationCompat, Integer> mAnimationSidesMap = new HashMap<>();

            private boolean animatesSystemBars(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
                if ((windowInsetsAnimationCompat.getTypeMask() & WindowInsetsCompat.Type.systemBars()) != 0) {
                    return true;
                }
                return false;
            }

            @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
            public void onEnd(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
                if (animatesSystemBars(windowInsetsAnimationCompat)) {
                    this.mAnimationSidesMap.remove(windowInsetsAnimationCompat);
                    for (int size = SystemBarStateMonitor.this.mCallbacks.size() - 1; size >= 0; size--) {
                        ((Callback) SystemBarStateMonitor.this.mCallbacks.get(size)).onAnimationEnd();
                    }
                }
            }

            @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
            public void onPrepare(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
                if (animatesSystemBars(windowInsetsAnimationCompat)) {
                    for (int size = SystemBarStateMonitor.this.mCallbacks.size() - 1; size >= 0; size--) {
                        ((Callback) SystemBarStateMonitor.this.mCallbacks.get(size)).onAnimationStart();
                    }
                }
            }

            @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
            public WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List<WindowInsetsAnimationCompat> list) {
                RectF rectF = new RectF(1.0f, 1.0f, 1.0f, 1.0f);
                int i2 = 0;
                for (int size = list.size() - 1; size >= 0; size--) {
                    WindowInsetsAnimationCompat windowInsetsAnimationCompat = list.get(size);
                    Integer num = this.mAnimationSidesMap.get(windowInsetsAnimationCompat);
                    if (num != null) {
                        int intValue = num.intValue();
                        float alpha = windowInsetsAnimationCompat.getAlpha();
                        if ((intValue & 1) != 0) {
                            rectF.left = alpha;
                        }
                        if ((intValue & 2) != 0) {
                            rectF.top = alpha;
                        }
                        if ((intValue & 4) != 0) {
                            rectF.right = alpha;
                        }
                        if ((intValue & 8) != 0) {
                            rectF.bottom = alpha;
                        }
                        i2 |= intValue;
                    }
                }
                Insets insets2 = SystemBarStateMonitor.this.getInsets(windowInsetsCompat);
                for (int size2 = SystemBarStateMonitor.this.mCallbacks.size() - 1; size2 >= 0; size2--) {
                    ((Callback) SystemBarStateMonitor.this.mCallbacks.get(size2)).onAnimationProgress(i2, insets2, rectF);
                }
                return windowInsetsCompat;
            }

            @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
            public WindowInsetsAnimationCompat.BoundsCompat onStart(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsAnimationCompat.BoundsCompat boundsCompat) {
                int i2;
                if (!animatesSystemBars(windowInsetsAnimationCompat)) {
                    return boundsCompat;
                }
                Insets upperBound = boundsCompat.getUpperBound();
                Insets lowerBound = boundsCompat.getLowerBound();
                if (upperBound.left != lowerBound.left) {
                    i2 = 1;
                } else {
                    i2 = 0;
                }
                if (upperBound.top != lowerBound.top) {
                    i2 |= 2;
                }
                if (upperBound.right != lowerBound.right) {
                    i2 |= 4;
                }
                if (upperBound.bottom != lowerBound.bottom) {
                    i2 |= 8;
                }
                this.mAnimationSidesMap.put(windowInsetsAnimationCompat, Integer.valueOf(i2));
                return boundsCompat;
            }
        });
        viewGroup.addView(view, 0);
    }

    public static /* synthetic */ WindowInsetsCompat Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SystemBarStateMonitor systemBarStateMonitor, View view, WindowInsetsCompat windowInsetsCompat) {
        Insets insets = systemBarStateMonitor.getInsets(windowInsetsCompat);
        Insets insetsIgnoringVisibility = systemBarStateMonitor.getInsetsIgnoringVisibility(windowInsetsCompat);
        if (!insets.equals(systemBarStateMonitor.mInsets) || !insetsIgnoringVisibility.equals(systemBarStateMonitor.mInsetsIgnoringVisibility)) {
            systemBarStateMonitor.mInsets = insets;
            systemBarStateMonitor.mInsetsIgnoringVisibility = insetsIgnoringVisibility;
            for (int size = systemBarStateMonitor.mCallbacks.size() - 1; size >= 0; size--) {
                systemBarStateMonitor.mCallbacks.get(size).onInsetsChanged(insets, insetsIgnoringVisibility);
            }
        }
        return windowInsetsCompat;
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SystemBarStateMonitor systemBarStateMonitor) {
        ViewParent parent = systemBarStateMonitor.mDetector.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(systemBarStateMonitor.mDetector);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Insets getInsets(WindowInsetsCompat windowInsetsCompat) {
        return Insets.min(windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars()), windowInsetsCompat.getInsets(WindowInsetsCompat.Type.tappableElement()));
    }

    private Insets getInsetsIgnoringVisibility(WindowInsetsCompat windowInsetsCompat) {
        return Insets.min(windowInsetsCompat.getInsetsIgnoringVisibility(WindowInsetsCompat.Type.systemBars()), windowInsetsCompat.getInsetsIgnoringVisibility(WindowInsetsCompat.Type.tappableElement()));
    }

    public void addCallback(Callback callback) {
        if (this.mCallbacks.contains(callback)) {
            return;
        }
        this.mCallbacks.add(callback);
        callback.onInsetsChanged(this.mInsets, this.mInsetsIgnoringVisibility);
        callback.onColorHintChanged(this.mColorHint);
    }

    public void detachFromWindow() {
        this.mDetector.post(new Runnable() { // from class: androidx.core.view.insets.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                SystemBarStateMonitor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SystemBarStateMonitor.this);
            }
        });
    }

    public boolean hasCallback() {
        return !this.mCallbacks.isEmpty();
    }

    public void removeCallback(Callback callback) {
        this.mCallbacks.remove(callback);
    }
}
