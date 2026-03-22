package com.bumptech.glide.load.data;

import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.data.DataRewinder;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class ParcelFileDescriptorRewinder implements DataRewinder<ParcelFileDescriptor> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final InternalRewinder f4215Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @RequiresApi(21)
    /* loaded from: classes3.dex */
    public static final class Factory implements DataRewinder.Factory<ParcelFileDescriptor> {
        @Override // com.bumptech.glide.load.data.DataRewinder.Factory
        @NonNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public DataRewinder<ParcelFileDescriptor> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ParcelFileDescriptor parcelFileDescriptor) {
            return new ParcelFileDescriptorRewinder(parcelFileDescriptor);
        }

        @Override // com.bumptech.glide.load.data.DataRewinder.Factory
        @NonNull
        public Class<ParcelFileDescriptor> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return ParcelFileDescriptor.class;
        }
    }

    /* compiled from: Proguard */
    @RequiresApi(21)
    /* loaded from: classes3.dex */
    public static final class InternalRewinder {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ParcelFileDescriptor f4216Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public InternalRewinder(ParcelFileDescriptor parcelFileDescriptor) {
            this.f4216Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = parcelFileDescriptor;
        }

        public ParcelFileDescriptor rewind() throws IOException {
            try {
                Os.lseek(this.f4216Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getFileDescriptor(), 0L, OsConstants.SEEK_SET);
                return this.f4216Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            } catch (ErrnoException e) {
                throw new IOException(e);
            }
        }
    }

    @RequiresApi(21)
    public ParcelFileDescriptorRewinder(ParcelFileDescriptor parcelFileDescriptor) {
        this.f4215Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new InternalRewinder(parcelFileDescriptor);
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!"robolectric".equals(Build.FINGERPRINT)) {
            return true;
        }
        return false;
    }

    @Override // com.bumptech.glide.load.data.DataRewinder
    @NonNull
    @RequiresApi(21)
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public ParcelFileDescriptor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        return this.f4215Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.rewind();
    }

    @Override // com.bumptech.glide.load.data.DataRewinder
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
    }
}
