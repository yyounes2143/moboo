package com.tencent.thumbplayer.tcmedia.core.imagegenerator;

import com.tencent.thumbplayer.tcmedia.core.common.TPNativeLibraryLoader;
import java.util.Map;
/* loaded from: classes6.dex */
public class TPImageGenerator {
    private ITPImageGeneratorCallback mCallback;
    private int mFd;
    private long mFdLength;
    private long mFdOffset;
    private Map<String, String> mHttpHeader;
    private boolean mInited;
    private boolean mIsLibLoaded;
    private long mNativeContext;
    private String mUrl;

    public TPImageGenerator(int i, long j, long j2, ITPImageGeneratorCallback iTPImageGeneratorCallback) {
        this.mUrl = null;
        this.mHttpHeader = null;
        this.mCallback = null;
        this.mFd = -1;
        this.mInited = false;
        this.mIsLibLoaded = false;
        this.mNativeContext = 0L;
        loadLibrary();
        this.mFd = i;
        this.mFdOffset = j;
        this.mFdLength = j2;
        this.mCallback = iTPImageGeneratorCallback;
    }

    private native void _cancelAllImageGenerations();

    private native int _createWithFd(int i, long j, long j2, Object obj);

    private native int _createWithUrl(String str, Object obj);

    private native void _generateImageAsyncAtTime(long j, long j2, Object obj);

    private native void _generateImagesAsyncForTimes(long[] jArr, long j, Object obj);

    private native void _release();

    private void loadLibrary() {
        try {
            TPNativeLibraryLoader.loadLibIfNeeded(null);
            this.mIsLibLoaded = true;
        } catch (UnsupportedOperationException e) {
            e.printStackTrace();
            this.mIsLibLoaded = false;
        }
    }

    public void cancelAllImageGenerations() {
        if (this.mIsLibLoaded) {
            if (!this.mInited) {
                return;
            }
            _cancelAllImageGenerations();
            return;
        }
        throw new UnsupportedOperationException("Failed to load native library");
    }

    public void generateImageAsyncAtTime(long j, long j2, TPImageGeneratorParams tPImageGeneratorParams) {
        if (this.mIsLibLoaded) {
            if (this.mInited) {
                _generateImageAsyncAtTime(j, j2, tPImageGeneratorParams);
                return;
            }
            throw new IllegalStateException("Failed to generate image at time " + j + " due to invalid state.");
        }
        throw new UnsupportedOperationException("Failed to load native library");
    }

    public void generateImagesAsyncForTimes(long[] jArr, long j, TPImageGeneratorParams tPImageGeneratorParams) {
        if (this.mIsLibLoaded) {
            if (this.mInited) {
                _generateImagesAsyncForTimes(jArr, j, tPImageGeneratorParams);
                return;
            }
            throw new IllegalStateException("Failed to generate images due to invalid state.");
        }
        throw new UnsupportedOperationException("Failed to load native library");
    }

    public void init() {
        if (this.mIsLibLoaded) {
            if (!this.mInited) {
                this.mInited = true;
                String str = this.mUrl;
                if (str != null && this.mHttpHeader != null) {
                    return;
                }
                if (str != null) {
                    _createWithUrl(str, this.mCallback);
                    return;
                } else {
                    _createWithFd(this.mFd, this.mFdOffset, this.mFdLength, this.mCallback);
                    return;
                }
            }
            throw new IllegalStateException("Failed to init due to invalid state.");
        }
        throw new UnsupportedOperationException("Failed to load native library");
    }

    public void unInit() {
        if (this.mIsLibLoaded) {
            if (!this.mInited) {
                return;
            }
            this.mInited = false;
            _release();
            return;
        }
        throw new UnsupportedOperationException("Failed to load native library");
    }

    public TPImageGenerator(String str, ITPImageGeneratorCallback iTPImageGeneratorCallback) {
        this.mUrl = null;
        this.mHttpHeader = null;
        this.mCallback = null;
        this.mFd = -1;
        this.mInited = false;
        this.mIsLibLoaded = false;
        this.mNativeContext = 0L;
        loadLibrary();
        this.mUrl = str;
        this.mCallback = iTPImageGeneratorCallback;
    }

    public TPImageGenerator(String str, Map<String, String> map, ITPImageGeneratorCallback iTPImageGeneratorCallback) {
        this.mUrl = null;
        this.mHttpHeader = null;
        this.mCallback = null;
        this.mFd = -1;
        this.mInited = false;
        this.mIsLibLoaded = false;
        this.mNativeContext = 0L;
        loadLibrary();
        this.mUrl = str;
        this.mHttpHeader = map;
        this.mCallback = iTPImageGeneratorCallback;
    }
}
