package com.tencent.thumbplayer.tcmedia.core.subtitle;

import com.tencent.thumbplayer.tcmedia.core.common.TPMediaTrackInfo;
import com.tencent.thumbplayer.tcmedia.core.common.TPNativeLibraryLoader;
import com.tencent.thumbplayer.tcmedia.core.common.TPSubtitleFrameWrapper;
import com.tencent.thumbplayer.tcmedia.core.player.TPNativePlayerUtils;
import java.util.Map;
/* loaded from: classes6.dex */
public class TPSubtitleParser {
    public static final int TP_SUBTITLE_OUTPUT_RGBA = 1;
    public static final int TP_SUBTITLE_OUTPUT_TEXT = 0;
    private ITPSubtitleParserCallback mCallback;
    private Map<String, String> mHttpHeader;
    private boolean mInited;
    private boolean mIsLibLoaded;
    private long mNativeContext;
    private int mOutputType;
    private String mUrl;

    public TPSubtitleParser(String str, ITPSubtitleParserCallback iTPSubtitleParserCallback) {
        this.mUrl = null;
        this.mHttpHeader = null;
        this.mOutputType = 0;
        this.mCallback = null;
        this.mInited = false;
        this.mIsLibLoaded = false;
        this.mNativeContext = 0L;
        loadLibrary();
        this.mUrl = str;
        this.mCallback = iTPSubtitleParserCallback;
    }

    private native int _subtitleCreate(String str, Object obj, int i);

    private native int _subtitleCreateWithUrlHttpHeader(String str, Object[] objArr, Object obj, int i);

    private native void _subtitleDelete();

    private native TPSubtitleFrameWrapper _subtitleGetFrame(long j);

    private native String _subtitleGetText(long j, int i);

    private native int _subtitleGetTrackCount();

    private native String _subtitleGetTrackName(int i);

    private native void _subtitleLoadAsync();

    private native void _subtitlePauseAsync();

    private native int _subtitleSelectTrackAsync(int i, long j);

    private native void _subtitleSetRenderParams(TPNativeSubtitleRenderParams tPNativeSubtitleRenderParams);

    private native void _subtitleStartAsync();

    private native void _subtitleStop();

    private void loadLibrary() {
        try {
            TPNativeLibraryLoader.loadLibIfNeeded(null);
            this.mIsLibLoaded = true;
        } catch (UnsupportedOperationException e) {
            e.printStackTrace();
            this.mIsLibLoaded = false;
        }
    }

    public TPSubtitleFrameWrapper getSubtitleFrame(long j) {
        if (this.mIsLibLoaded) {
            if (this.mInited) {
                return _subtitleGetFrame(j);
            }
            throw new IllegalStateException("Failed to getSubtitleFrame due to invalid state.");
        }
        throw new UnsupportedOperationException("Failed to load native library");
    }

    public String getSubtitleText(long j, int i) {
        if (this.mIsLibLoaded) {
            if (this.mInited) {
                return _subtitleGetText(j, i);
            }
            throw new IllegalStateException("Failed to getSubtitleText due to invalid state.");
        }
        throw new UnsupportedOperationException("Failed to load native library");
    }

    public TPMediaTrackInfo[] getTrackInfo() {
        if (this.mIsLibLoaded) {
            if (this.mInited) {
                int _subtitleGetTrackCount = _subtitleGetTrackCount();
                if (_subtitleGetTrackCount > 0) {
                    TPMediaTrackInfo[] tPMediaTrackInfoArr = new TPMediaTrackInfo[_subtitleGetTrackCount];
                    for (int i = 0; i < _subtitleGetTrackCount; i++) {
                        TPMediaTrackInfo tPMediaTrackInfo = new TPMediaTrackInfo();
                        tPMediaTrackInfo.trackType = 3;
                        tPMediaTrackInfo.trackName = _subtitleGetTrackName(i);
                        tPMediaTrackInfoArr[i] = tPMediaTrackInfo;
                    }
                    return tPMediaTrackInfoArr;
                }
                return null;
            }
            throw new IllegalStateException("Failed to getTrackInfo due to invalid state.");
        }
        throw new UnsupportedOperationException("Failed to load native library");
    }

    public void init() {
        if (this.mIsLibLoaded) {
            if (!this.mInited) {
                this.mInited = true;
                String str = this.mUrl;
                if (str != null && this.mCallback != null) {
                    _subtitleCreateWithUrlHttpHeader(str, TPNativePlayerUtils.tpMapStringToStringArray(this.mHttpHeader), this.mCallback, this.mOutputType);
                    return;
                }
                return;
            }
            throw new IllegalStateException("Failed to init due to invalid state.");
        }
        throw new UnsupportedOperationException("Failed to load native library");
    }

    public void loadAsync() {
        if (this.mIsLibLoaded) {
            if (this.mInited) {
                _subtitleLoadAsync();
                return;
            }
            throw new IllegalStateException("Failed to loadAsync due to invalid state.");
        }
        throw new UnsupportedOperationException("Failed to load native library");
    }

    public void pauseAsync() {
        if (this.mIsLibLoaded) {
            if (this.mInited) {
                _subtitlePauseAsync();
                return;
            }
            throw new IllegalStateException("Failed to pauseAsync due to invalid state.");
        }
        throw new UnsupportedOperationException("Failed to load native library");
    }

    public int selectTrackAsync(int i, long j) {
        if (this.mIsLibLoaded) {
            if (this.mInited) {
                return _subtitleSelectTrackAsync(i, j);
            }
            throw new IllegalStateException("Failed to selectTrackAsync due to invalid state.");
        }
        throw new UnsupportedOperationException("Failed to load native library");
    }

    public int selectTracksAsync(int[] iArr, long j) {
        return 0;
    }

    public void setRenderParams(TPNativeSubtitleRenderParams tPNativeSubtitleRenderParams) {
        if (this.mIsLibLoaded) {
            if (this.mInited) {
                _subtitleSetRenderParams(tPNativeSubtitleRenderParams);
                return;
            }
            throw new IllegalStateException("Failed to setRenderParams due to invalid state.");
        }
        throw new UnsupportedOperationException("Failed to load native library");
    }

    public void startAsync() {
        if (this.mIsLibLoaded) {
            if (this.mInited) {
                _subtitleStartAsync();
                return;
            }
            throw new IllegalStateException("Failed to startAsync due to invalid state.");
        }
        throw new UnsupportedOperationException("Failed to load native library");
    }

    public void stop() {
        if (this.mIsLibLoaded) {
            if (this.mInited) {
                _subtitleStop();
                return;
            }
            throw new IllegalStateException("Failed to stop due to invalid state.");
        }
        throw new UnsupportedOperationException("Failed to load native library");
    }

    public void unInit() {
        if (this.mIsLibLoaded) {
            if (!this.mInited) {
                return;
            }
            this.mInited = false;
            _subtitleDelete();
            return;
        }
        throw new UnsupportedOperationException("Failed to load native library");
    }

    public TPSubtitleParser(String str, ITPSubtitleParserCallback iTPSubtitleParserCallback, int i) {
        this.mUrl = null;
        this.mHttpHeader = null;
        this.mOutputType = 0;
        this.mCallback = null;
        this.mInited = false;
        this.mIsLibLoaded = false;
        this.mNativeContext = 0L;
        loadLibrary();
        this.mUrl = str;
        this.mCallback = iTPSubtitleParserCallback;
        this.mOutputType = i;
    }

    public TPSubtitleParser(String str, Map<String, String> map, ITPSubtitleParserCallback iTPSubtitleParserCallback) {
        this.mUrl = null;
        this.mHttpHeader = null;
        this.mOutputType = 0;
        this.mCallback = null;
        this.mInited = false;
        this.mIsLibLoaded = false;
        this.mNativeContext = 0L;
        loadLibrary();
        this.mUrl = str;
        this.mHttpHeader = map;
        this.mCallback = iTPSubtitleParserCallback;
    }

    public TPSubtitleParser(String str, Map<String, String> map, ITPSubtitleParserCallback iTPSubtitleParserCallback, int i) {
        this.mUrl = null;
        this.mHttpHeader = null;
        this.mOutputType = 0;
        this.mCallback = null;
        this.mInited = false;
        this.mIsLibLoaded = false;
        this.mNativeContext = 0L;
        loadLibrary();
        this.mUrl = str;
        this.mHttpHeader = map;
        this.mCallback = iTPSubtitleParserCallback;
        this.mOutputType = i;
    }
}
