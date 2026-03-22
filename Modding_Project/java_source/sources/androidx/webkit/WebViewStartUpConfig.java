package androidx.webkit;

import androidx.webkit.WebViewCompat;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
@WebViewCompat.ExperimentalAsyncStartUp
/* loaded from: classes3.dex */
public final class WebViewStartUpConfig {
    private final Executor mExecutor;
    private final boolean mShouldRunUiThreadStartUpTasks;

    /* compiled from: Proguard */
    @WebViewCompat.ExperimentalAsyncStartUp
    /* loaded from: classes3.dex */
    public static final class Builder {
        private final Executor mExecutor;
        private boolean mShouldRunUiThreadStartUpTasks = true;

        public Builder(Executor executor) {
            this.mExecutor = executor;
        }

        public WebViewStartUpConfig build() {
            return new WebViewStartUpConfig(this.mExecutor, this.mShouldRunUiThreadStartUpTasks);
        }

        public Builder setShouldRunUiThreadStartUpTasks(boolean z) {
            this.mShouldRunUiThreadStartUpTasks = z;
            return this;
        }
    }

    public Executor getBackgroundExecutor() {
        return this.mExecutor;
    }

    public boolean shouldRunUiThreadStartUpTasks() {
        return this.mShouldRunUiThreadStartUpTasks;
    }

    private WebViewStartUpConfig(Executor executor, boolean z) {
        this.mExecutor = executor;
        this.mShouldRunUiThreadStartUpTasks = z;
    }
}
