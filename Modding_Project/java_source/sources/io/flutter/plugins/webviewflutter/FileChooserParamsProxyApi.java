package io.flutter.plugins.webviewflutter;

import android.webkit.WebChromeClient;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FileChooserParamsProxyApi extends PigeonApiFileChooserParams {
    public FileChooserParamsProxyApi(@NonNull ProxyApiRegistrar proxyApiRegistrar) {
        super(proxyApiRegistrar);
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiFileChooserParams
    @NonNull
    public List<String> acceptTypes(@NonNull WebChromeClient.FileChooserParams fileChooserParams) {
        return Arrays.asList(fileChooserParams.getAcceptTypes());
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiFileChooserParams
    @Nullable
    public String filenameHint(@NonNull WebChromeClient.FileChooserParams fileChooserParams) {
        return fileChooserParams.getFilenameHint();
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiFileChooserParams
    public boolean isCaptureEnabled(@NonNull WebChromeClient.FileChooserParams fileChooserParams) {
        return fileChooserParams.isCaptureEnabled();
    }

    @Override // io.flutter.plugins.webviewflutter.PigeonApiFileChooserParams
    @NonNull
    public FileChooserMode mode(@NonNull WebChromeClient.FileChooserParams fileChooserParams) {
        int mode = fileChooserParams.getMode();
        if (mode != 0) {
            if (mode != 1) {
                if (mode != 3) {
                    return FileChooserMode.UNKNOWN;
                }
                return FileChooserMode.SAVE;
            }
            return FileChooserMode.OPEN_MULTIPLE;
        }
        return FileChooserMode.OPEN;
    }
}
