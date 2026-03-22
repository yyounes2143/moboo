package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.annotation.NonNull;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
class AnimatorUtils {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface AnimatorPauseListenerCompat {
        void onAnimationPause(Animator animator);

        void onAnimationResume(Animator animator);
    }

    private AnimatorUtils() {
    }

    public static void addPauseListener(@NonNull Animator animator, @NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        animator.addPauseListener(animatorListenerAdapter);
    }

    public static void pause(@NonNull Animator animator) {
        animator.pause();
    }

    public static void resume(@NonNull Animator animator) {
        animator.resume();
    }
}
