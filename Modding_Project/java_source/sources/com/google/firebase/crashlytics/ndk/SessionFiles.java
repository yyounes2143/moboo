package com.google.firebase.crashlytics.ndk;

import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.File;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
final class SessionFiles {

    /* renamed from: app  reason: collision with root package name */
    public final File f8031app;
    public final File binaryImages;
    public final File device;
    public final File metadata;
    public final NativeCore nativeCore;
    public final File os;
    public final File session;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: app  reason: collision with root package name */
        private File f8032app;
        private File binaryImages;
        private File device;
        private File metadata;
        private NativeCore nativeCore;
        private File os;
        private File session;

        public Builder appFile(File file) {
            this.f8032app = file;
            return this;
        }

        public Builder binaryImagesFile(File file) {
            this.binaryImages = file;
            return this;
        }

        public SessionFiles build() {
            return new SessionFiles(this);
        }

        public Builder deviceFile(File file) {
            this.device = file;
            return this;
        }

        public Builder metadataFile(File file) {
            this.metadata = file;
            return this;
        }

        public Builder nativeCore(NativeCore nativeCore) {
            this.nativeCore = nativeCore;
            return this;
        }

        public Builder osFile(File file) {
            this.os = file;
            return this;
        }

        public Builder sessionFile(File file) {
            this.session = file;
            return this;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static final class NativeCore {
        @Nullable
        public final CrashlyticsReport.ApplicationExitInfo applicationExitInfo;
        @Nullable
        public final File minidump;

        public NativeCore(@Nullable File file, @Nullable CrashlyticsReport.ApplicationExitInfo applicationExitInfo) {
            this.minidump = file;
            this.applicationExitInfo = applicationExitInfo;
        }

        public boolean hasCore() {
            File file = this.minidump;
            if ((file != null && file.exists()) || this.applicationExitInfo != null) {
                return true;
            }
            return false;
        }
    }

    private SessionFiles(Builder builder) {
        this.nativeCore = builder.nativeCore;
        this.binaryImages = builder.binaryImages;
        this.metadata = builder.metadata;
        this.session = builder.session;
        this.f8031app = builder.f8032app;
        this.device = builder.device;
        this.os = builder.os;
    }
}
