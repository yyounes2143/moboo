package io.flutter.plugins.imagepicker;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import androidx.activity.result.PickVisualMediaRequest;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugins.imagepicker.ImagePickerCache;
import io.flutter.plugins.imagepicker.ImagePickerDelegate;
import io.flutter.plugins.imagepicker.Messages;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class ImagePickerDelegate implements PluginRegistry.ActivityResultListener, PluginRegistry.RequestPermissionsResultListener {
    @VisibleForTesting
    static final int REQUEST_CAMERA_IMAGE_PERMISSION = 2345;
    @VisibleForTesting
    static final int REQUEST_CAMERA_VIDEO_PERMISSION = 2355;
    @VisibleForTesting
    static final int REQUEST_CODE_CHOOSE_IMAGE_FROM_GALLERY = 2342;
    @VisibleForTesting
    static final int REQUEST_CODE_CHOOSE_MEDIA_FROM_GALLERY = 2347;
    @VisibleForTesting
    static final int REQUEST_CODE_CHOOSE_MULTI_IMAGE_FROM_GALLERY = 2346;
    @VisibleForTesting
    static final int REQUEST_CODE_CHOOSE_VIDEO_FROM_GALLERY = 2352;
    @VisibleForTesting
    static final int REQUEST_CODE_TAKE_IMAGE_WITH_CAMERA = 2343;
    @VisibleForTesting
    static final int REQUEST_CODE_TAKE_VIDEO_WITH_CAMERA = 2353;
    @NonNull
    private final Activity activity;
    @NonNull
    private final ImagePickerCache cache;
    private CameraDevice cameraDevice;
    private final ExecutorService executor;
    @VisibleForTesting
    final String fileProviderName;
    private final FileUriResolver fileUriResolver;
    private final FileUtils fileUtils;
    @NonNull
    private final ImageResizer imageResizer;
    @Nullable
    private PendingCallState pendingCallState;
    private final Object pendingCallStateLock;
    private Uri pendingCameraMediaUri;
    private final PermissionManager permissionManager;

    /* compiled from: Proguard */
    /* renamed from: io.flutter.plugins.imagepicker.ImagePickerDelegate$2  reason: invalid class name */
    /* loaded from: classes6.dex */
    public class AnonymousClass2 implements FileUriResolver {
        final /* synthetic */ Activity val$activity;

        public AnonymousClass2(Activity activity) {
            this.val$activity = activity;
        }

        @Override // io.flutter.plugins.imagepicker.ImagePickerDelegate.FileUriResolver
        public void getFullImagePath(Uri uri, final OnPathReadyListener onPathReadyListener) {
            String str;
            Activity activity = this.val$activity;
            if (uri != null) {
                str = uri.getPath();
            } else {
                str = "";
            }
            MediaScannerConnection.scanFile(activity, new String[]{str}, null, new MediaScannerConnection.OnScanCompletedListener() { // from class: io.flutter.plugins.imagepicker.Wwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // android.media.MediaScannerConnection.OnScanCompletedListener
                public final void onScanCompleted(String str2, Uri uri2) {
                    ImagePickerDelegate.OnPathReadyListener.this.onPathReady(str2);
                }
            });
        }

        @Override // io.flutter.plugins.imagepicker.ImagePickerDelegate.FileUriResolver
        public Uri resolveFileProviderUriForFile(String str, File file) {
            return FileProvider.getUriForFile(this.val$activity, str, file);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public enum CameraDevice {
        REAR,
        FRONT
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface FileUriResolver {
        void getFullImagePath(Uri uri, OnPathReadyListener onPathReadyListener);

        Uri resolveFileProviderUriForFile(String str, File file);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class MediaPath {
        final String mimeType;
        final String path;

        public MediaPath(@NonNull String str, @Nullable String str2) {
            this.path = str;
            this.mimeType = str2;
        }

        @Nullable
        public String getMimeType() {
            return this.mimeType;
        }

        @NonNull
        public String getPath() {
            return this.path;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface OnPathReadyListener {
        void onPathReady(String str);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class PendingCallState {
        @Nullable
        public final Messages.ImageSelectionOptions imageOptions;
        @NonNull
        public final Messages.Result<List<String>> result;
        @Nullable
        public final Messages.VideoSelectionOptions videoOptions;

        public PendingCallState(@Nullable Messages.ImageSelectionOptions imageSelectionOptions, @Nullable Messages.VideoSelectionOptions videoSelectionOptions, @NonNull Messages.Result<List<String>> result) {
            this.imageOptions = imageSelectionOptions;
            this.videoOptions = videoSelectionOptions;
            this.result = result;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface PermissionManager {
        void askForPermission(String str, int i);

        boolean isPermissionGranted(String str);

        boolean needRequestCameraPermission();
    }

    public ImagePickerDelegate(@NonNull final Activity activity, @NonNull ImageResizer imageResizer, @NonNull ImagePickerCache imagePickerCache) {
        this(activity, imageResizer, null, null, null, imagePickerCache, new PermissionManager() { // from class: io.flutter.plugins.imagepicker.ImagePickerDelegate.1
            @Override // io.flutter.plugins.imagepicker.ImagePickerDelegate.PermissionManager
            public void askForPermission(String str, int i) {
                ActivityCompat.requestPermissions(activity, new String[]{str}, i);
            }

            @Override // io.flutter.plugins.imagepicker.ImagePickerDelegate.PermissionManager
            public boolean isPermissionGranted(String str) {
                if (ContextCompat.checkSelfPermission(activity, str) == 0) {
                    return true;
                }
                return false;
            }

            @Override // io.flutter.plugins.imagepicker.ImagePickerDelegate.PermissionManager
            public boolean needRequestCameraPermission() {
                return ImagePickerUtils.needRequestCameraPermission(activity);
            }
        }, new AnonymousClass2(activity), new FileUtils(), Executors.newSingleThreadExecutor());
    }

    private File createTemporaryWritableFile(String str) {
        String uuid = UUID.randomUUID().toString();
        File cacheDir = this.activity.getCacheDir();
        try {
            cacheDir.mkdirs();
            return File.createTempFile(uuid, str, cacheDir);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private File createTemporaryWritableImageFile() {
        return createTemporaryWritableFile(".jpg");
    }

    private File createTemporaryWritableVideoFile() {
        return createTemporaryWritableFile(".mp4");
    }

    private void finishWithAlreadyActiveError(Messages.Result<List<String>> result) {
        result.error(new Messages.FlutterError("already_active", "Image picker is already active", null));
    }

    private void finishWithError(String str, String str2) {
        Messages.Result<List<String>> result;
        synchronized (this.pendingCallStateLock) {
            try {
                PendingCallState pendingCallState = this.pendingCallState;
                if (pendingCallState != null) {
                    result = pendingCallState.result;
                } else {
                    result = null;
                }
                this.pendingCallState = null;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (result == null) {
            this.cache.saveResult(null, str, str2);
        } else {
            result.error(new Messages.FlutterError(str, str2, null));
        }
    }

    private void finishWithListSuccess(ArrayList<String> arrayList) {
        Messages.Result<List<String>> result;
        synchronized (this.pendingCallStateLock) {
            try {
                PendingCallState pendingCallState = this.pendingCallState;
                if (pendingCallState != null) {
                    result = pendingCallState.result;
                } else {
                    result = null;
                }
                this.pendingCallState = null;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (result == null) {
            this.cache.saveResult(arrayList, null, null);
        } else {
            result.success(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishWithSuccess(@Nullable String str) {
        Messages.Result<List<String>> result;
        ArrayList<String> arrayList = new ArrayList<>();
        if (str != null) {
            arrayList.add(str);
        }
        synchronized (this.pendingCallStateLock) {
            try {
                PendingCallState pendingCallState = this.pendingCallState;
                if (pendingCallState != null) {
                    result = pendingCallState.result;
                } else {
                    result = null;
                }
                this.pendingCallState = null;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (result == null) {
            if (!arrayList.isEmpty()) {
                this.cache.saveResult(arrayList, null, null);
                return;
            }
            return;
        }
        result.success(arrayList);
    }

    @Nullable
    private ArrayList<MediaPath> getPathsFromIntent(@NonNull Intent intent, boolean z) {
        String pathFromUri;
        String str;
        ArrayList<MediaPath> arrayList = new ArrayList<>();
        Uri data = intent.getData();
        if (data == null) {
            if (intent.getClipData() == null) {
                return null;
            }
            for (int i = 0; i < intent.getClipData().getItemCount(); i++) {
                Uri uri = intent.getClipData().getItemAt(i).getUri();
                if (uri == null || (pathFromUri = this.fileUtils.getPathFromUri(this.activity, uri)) == null) {
                    return null;
                }
                if (z) {
                    str = this.activity.getContentResolver().getType(uri);
                } else {
                    str = null;
                }
                arrayList.add(new MediaPath(pathFromUri, str));
            }
            return arrayList;
        }
        String pathFromUri2 = this.fileUtils.getPathFromUri(this.activity, data);
        if (pathFromUri2 == null) {
            return null;
        }
        arrayList.add(new MediaPath(pathFromUri2, null));
        return arrayList;
    }

    private String getResizedImagePath(String str, @NonNull Messages.ImageSelectionOptions imageSelectionOptions) {
        return this.imageResizer.resizeImageIfNeeded(str, imageSelectionOptions.getMaxWidth(), imageSelectionOptions.getMaxHeight(), imageSelectionOptions.getQuality().intValue());
    }

    private void grantUriPermissions(Intent intent, Uri uri) {
        List<ResolveInfo> queryIntentActivitiesPreApi33;
        PackageManager.ResolveInfoFlags of;
        PackageManager packageManager = this.activity.getPackageManager();
        if (Build.VERSION.SDK_INT >= 33) {
            of = PackageManager.ResolveInfoFlags.of(65536L);
            queryIntentActivitiesPreApi33 = packageManager.queryIntentActivities(intent, of);
        } else {
            queryIntentActivitiesPreApi33 = queryIntentActivitiesPreApi33(packageManager, intent);
        }
        for (ResolveInfo resolveInfo : queryIntentActivitiesPreApi33) {
            this.activity.grantUriPermission(resolveInfo.activityInfo.packageName, uri, 3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCaptureImageResult(int i) {
        if (i == -1) {
            Uri uri = this.pendingCameraMediaUri;
            FileUriResolver fileUriResolver = this.fileUriResolver;
            if (uri == null) {
                uri = Uri.parse(this.cache.retrievePendingCameraMediaUriPath());
            }
            fileUriResolver.getFullImagePath(uri, new OnPathReadyListener() { // from class: io.flutter.plugins.imagepicker.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // io.flutter.plugins.imagepicker.ImagePickerDelegate.OnPathReadyListener
                public final void onPathReady(String str) {
                    ImagePickerDelegate.this.handleImageResult(str, true);
                }
            });
            return;
        }
        finishWithSuccess(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCaptureVideoResult(int i) {
        if (i == -1) {
            Uri uri = this.pendingCameraMediaUri;
            FileUriResolver fileUriResolver = this.fileUriResolver;
            if (uri == null) {
                uri = Uri.parse(this.cache.retrievePendingCameraMediaUriPath());
            }
            fileUriResolver.getFullImagePath(uri, new OnPathReadyListener() { // from class: io.flutter.plugins.imagepicker.Wwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // io.flutter.plugins.imagepicker.ImagePickerDelegate.OnPathReadyListener
                public final void onPathReady(String str) {
                    ImagePickerDelegate.this.finishWithSuccess(str);
                }
            });
            return;
        }
        finishWithSuccess(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleChooseImageResult(int i, Intent intent) {
        if (i == -1 && intent != null) {
            ArrayList<MediaPath> pathsFromIntent = getPathsFromIntent(intent, false);
            if (pathsFromIntent == null) {
                finishWithError("no_valid_image_uri", "Cannot find the selected image.");
                return;
            } else {
                handleMediaResult(pathsFromIntent);
                return;
            }
        }
        finishWithSuccess(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleChooseMediaResult(int i, Intent intent) {
        if (i == -1 && intent != null) {
            ArrayList<MediaPath> pathsFromIntent = getPathsFromIntent(intent, true);
            if (pathsFromIntent == null) {
                finishWithError("no_valid_media_uri", "Cannot find the selected media.");
                return;
            } else {
                handleMediaResult(pathsFromIntent);
                return;
            }
        }
        finishWithSuccess(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleChooseMultiImageResult(int i, Intent intent) {
        if (i == -1 && intent != null) {
            ArrayList<MediaPath> pathsFromIntent = getPathsFromIntent(intent, false);
            if (pathsFromIntent == null) {
                finishWithError("missing_valid_image_uri", "Cannot find at least one of the selected images.");
                return;
            } else {
                handleMediaResult(pathsFromIntent);
                return;
            }
        }
        finishWithSuccess(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleChooseVideoResult(int i, Intent intent) {
        if (i == -1 && intent != null) {
            ArrayList<MediaPath> pathsFromIntent = getPathsFromIntent(intent, false);
            if (pathsFromIntent != null && pathsFromIntent.size() >= 1) {
                finishWithSuccess(pathsFromIntent.get(0).path);
                return;
            } else {
                finishWithError("no_valid_video_uri", "Cannot find the selected video.");
                return;
            }
        }
        finishWithSuccess(null);
    }

    private void handleMediaResult(@NonNull ArrayList<MediaPath> arrayList) {
        Messages.ImageSelectionOptions imageSelectionOptions;
        synchronized (this.pendingCallStateLock) {
            try {
                PendingCallState pendingCallState = this.pendingCallState;
                if (pendingCallState != null) {
                    imageSelectionOptions = pendingCallState.imageOptions;
                } else {
                    imageSelectionOptions = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ArrayList<String> arrayList2 = new ArrayList<>();
        int i = 0;
        if (imageSelectionOptions != null) {
            while (i < arrayList.size()) {
                MediaPath mediaPath = arrayList.get(i);
                String str = mediaPath.path;
                String str2 = mediaPath.mimeType;
                if (str2 == null || !str2.startsWith("video/")) {
                    str = getResizedImagePath(mediaPath.path, imageSelectionOptions);
                }
                arrayList2.add(str);
                i++;
            }
            finishWithListSuccess(arrayList2);
            return;
        }
        while (i < arrayList.size()) {
            arrayList2.add(arrayList.get(i).path);
            i++;
        }
        finishWithListSuccess(arrayList2);
    }

    private void launchMultiPickImageFromGalleryIntent(Boolean bool, int i) {
        Intent intent;
        if (bool.booleanValue()) {
            intent = new ActivityResultContracts.PickMultipleVisualMedia(i).createIntent((Context) this.activity, new PickVisualMediaRequest.Builder().setMediaType(ActivityResultContracts.PickVisualMedia.ImageOnly.INSTANCE).build());
        } else {
            intent = new Intent("android.intent.action.GET_CONTENT");
            intent.setType("image/*");
            intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
        }
        this.activity.startActivityForResult(intent, REQUEST_CODE_CHOOSE_MULTI_IMAGE_FROM_GALLERY);
    }

    private void launchPickImageFromGalleryIntent(Boolean bool) {
        Intent intent;
        if (bool.booleanValue()) {
            intent = new ActivityResultContracts.PickVisualMedia().createIntent((Context) this.activity, new PickVisualMediaRequest.Builder().setMediaType(ActivityResultContracts.PickVisualMedia.ImageOnly.INSTANCE).build());
        } else {
            intent = new Intent("android.intent.action.GET_CONTENT");
            intent.setType("image/*");
        }
        this.activity.startActivityForResult(intent, REQUEST_CODE_CHOOSE_IMAGE_FROM_GALLERY);
    }

    private void launchPickMediaFromGalleryIntent(Messages.GeneralOptions generalOptions) {
        Intent intent;
        if (generalOptions.getUsePhotoPicker().booleanValue()) {
            if (generalOptions.getAllowMultiple().booleanValue()) {
                intent = new ActivityResultContracts.PickMultipleVisualMedia(ImagePickerUtils.getLimitFromOption(generalOptions)).createIntent((Context) this.activity, new PickVisualMediaRequest.Builder().setMediaType(ActivityResultContracts.PickVisualMedia.ImageAndVideo.INSTANCE).build());
            } else {
                intent = new ActivityResultContracts.PickVisualMedia().createIntent((Context) this.activity, new PickVisualMediaRequest.Builder().setMediaType(ActivityResultContracts.PickVisualMedia.ImageAndVideo.INSTANCE).build());
            }
        } else {
            Intent intent2 = new Intent("android.intent.action.GET_CONTENT");
            intent2.setType("*/*");
            intent2.putExtra("CONTENT_TYPE", new String[]{"video/*", "image/*"});
            intent2.putExtra("android.intent.extra.ALLOW_MULTIPLE", generalOptions.getAllowMultiple());
            intent = intent2;
        }
        this.activity.startActivityForResult(intent, REQUEST_CODE_CHOOSE_MEDIA_FROM_GALLERY);
    }

    private void launchPickVideoFromGalleryIntent(Boolean bool) {
        Intent intent;
        if (bool.booleanValue()) {
            intent = new ActivityResultContracts.PickVisualMedia().createIntent((Context) this.activity, new PickVisualMediaRequest.Builder().setMediaType(ActivityResultContracts.PickVisualMedia.VideoOnly.INSTANCE).build());
        } else {
            intent = new Intent("android.intent.action.GET_CONTENT");
            intent.setType("video/*");
        }
        this.activity.startActivityForResult(intent, REQUEST_CODE_CHOOSE_VIDEO_FROM_GALLERY);
    }

    private void launchTakeImageWithCameraIntent() {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        if (this.cameraDevice == CameraDevice.FRONT) {
            useFrontCamera(intent);
        }
        File createTemporaryWritableImageFile = createTemporaryWritableImageFile();
        this.pendingCameraMediaUri = Uri.parse("file:" + createTemporaryWritableImageFile.getAbsolutePath());
        Uri resolveFileProviderUriForFile = this.fileUriResolver.resolveFileProviderUriForFile(this.fileProviderName, createTemporaryWritableImageFile);
        intent.putExtra("output", resolveFileProviderUriForFile);
        grantUriPermissions(intent, resolveFileProviderUriForFile);
        try {
            try {
                this.activity.startActivityForResult(intent, REQUEST_CODE_TAKE_IMAGE_WITH_CAMERA);
            } catch (ActivityNotFoundException unused) {
                createTemporaryWritableImageFile.delete();
                finishWithError("no_available_camera", "No cameras available for taking pictures.");
            }
        } catch (SecurityException e) {
            e.printStackTrace();
            finishWithError("no_available_camera", "No cameras available for taking pictures.");
        }
    }

    private void launchTakeVideoWithCameraIntent() {
        Messages.VideoSelectionOptions videoSelectionOptions;
        Intent intent = new Intent("android.media.action.VIDEO_CAPTURE");
        synchronized (this.pendingCallStateLock) {
            try {
                PendingCallState pendingCallState = this.pendingCallState;
                if (pendingCallState != null) {
                    videoSelectionOptions = pendingCallState.videoOptions;
                } else {
                    videoSelectionOptions = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (videoSelectionOptions != null && videoSelectionOptions.getMaxDurationSeconds() != null) {
            intent.putExtra("android.intent.extra.durationLimit", videoSelectionOptions.getMaxDurationSeconds().intValue());
        }
        if (this.cameraDevice == CameraDevice.FRONT) {
            useFrontCamera(intent);
        }
        File createTemporaryWritableVideoFile = createTemporaryWritableVideoFile();
        this.pendingCameraMediaUri = Uri.parse("file:" + createTemporaryWritableVideoFile.getAbsolutePath());
        Uri resolveFileProviderUriForFile = this.fileUriResolver.resolveFileProviderUriForFile(this.fileProviderName, createTemporaryWritableVideoFile);
        intent.putExtra("output", resolveFileProviderUriForFile);
        grantUriPermissions(intent, resolveFileProviderUriForFile);
        try {
            try {
                this.activity.startActivityForResult(intent, REQUEST_CODE_TAKE_VIDEO_WITH_CAMERA);
            } catch (ActivityNotFoundException unused) {
                createTemporaryWritableVideoFile.delete();
                finishWithError("no_available_camera", "No cameras available for taking pictures.");
            }
        } catch (SecurityException e) {
            e.printStackTrace();
            finishWithError("no_available_camera", "No cameras available for taking pictures.");
        }
    }

    private boolean needRequestCameraPermission() {
        PermissionManager permissionManager = this.permissionManager;
        if (permissionManager == null) {
            return false;
        }
        return permissionManager.needRequestCameraPermission();
    }

    private static List<ResolveInfo> queryIntentActivitiesPreApi33(PackageManager packageManager, Intent intent) {
        return packageManager.queryIntentActivities(intent, 65536);
    }

    private boolean setPendingOptionsAndResult(@Nullable Messages.ImageSelectionOptions imageSelectionOptions, @Nullable Messages.VideoSelectionOptions videoSelectionOptions, @NonNull Messages.Result<List<String>> result) {
        synchronized (this.pendingCallStateLock) {
            try {
                if (this.pendingCallState != null) {
                    return false;
                }
                this.pendingCallState = new PendingCallState(imageSelectionOptions, videoSelectionOptions, result);
                this.cache.clear();
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void useFrontCamera(Intent intent) {
        int i = Build.VERSION.SDK_INT;
        intent.putExtra("android.intent.extras.CAMERA_FACING", 0);
        if (i >= 26) {
            intent.putExtra("android.intent.extra.USE_FRONT_CAMERA", true);
        }
    }

    public void chooseImageFromGallery(@NonNull Messages.ImageSelectionOptions imageSelectionOptions, boolean z, @NonNull Messages.Result<List<String>> result) {
        if (!setPendingOptionsAndResult(imageSelectionOptions, null, result)) {
            finishWithAlreadyActiveError(result);
        } else {
            launchPickImageFromGalleryIntent(Boolean.valueOf(z));
        }
    }

    public void chooseMediaFromGallery(@NonNull Messages.MediaSelectionOptions mediaSelectionOptions, @NonNull Messages.GeneralOptions generalOptions, @NonNull Messages.Result<List<String>> result) {
        if (!setPendingOptionsAndResult(mediaSelectionOptions.getImageSelectionOptions(), null, result)) {
            finishWithAlreadyActiveError(result);
        } else {
            launchPickMediaFromGalleryIntent(generalOptions);
        }
    }

    public void chooseMultiImageFromGallery(@NonNull Messages.ImageSelectionOptions imageSelectionOptions, boolean z, int i, @NonNull Messages.Result<List<String>> result) {
        if (!setPendingOptionsAndResult(imageSelectionOptions, null, result)) {
            finishWithAlreadyActiveError(result);
        } else {
            launchMultiPickImageFromGalleryIntent(Boolean.valueOf(z), i);
        }
    }

    public void chooseVideoFromGallery(@NonNull Messages.VideoSelectionOptions videoSelectionOptions, boolean z, @NonNull Messages.Result<List<String>> result) {
        if (!setPendingOptionsAndResult(null, videoSelectionOptions, result)) {
            finishWithAlreadyActiveError(result);
        } else {
            launchPickVideoFromGalleryIntent(Boolean.valueOf(z));
        }
    }

    public void handleImageResult(String str, boolean z) {
        Messages.ImageSelectionOptions imageSelectionOptions;
        synchronized (this.pendingCallStateLock) {
            try {
                PendingCallState pendingCallState = this.pendingCallState;
                if (pendingCallState != null) {
                    imageSelectionOptions = pendingCallState.imageOptions;
                } else {
                    imageSelectionOptions = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (imageSelectionOptions != null) {
            String resizedImagePath = getResizedImagePath(str, imageSelectionOptions);
            if (resizedImagePath != null && !resizedImagePath.equals(str) && z) {
                new File(str).delete();
            }
            finishWithSuccess(resizedImagePath);
            return;
        }
        finishWithSuccess(str);
    }

    @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
    public boolean onActivityResult(int i, final int i2, @Nullable final Intent intent) {
        Runnable runnable;
        if (i != REQUEST_CODE_CHOOSE_IMAGE_FROM_GALLERY) {
            if (i != REQUEST_CODE_TAKE_IMAGE_WITH_CAMERA) {
                if (i != REQUEST_CODE_CHOOSE_MULTI_IMAGE_FROM_GALLERY) {
                    if (i != REQUEST_CODE_CHOOSE_MEDIA_FROM_GALLERY) {
                        if (i != REQUEST_CODE_CHOOSE_VIDEO_FROM_GALLERY) {
                            if (i != REQUEST_CODE_TAKE_VIDEO_WITH_CAMERA) {
                                return false;
                            }
                            runnable = new Runnable() { // from class: io.flutter.plugins.imagepicker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ImagePickerDelegate.this.handleCaptureVideoResult(i2);
                                }
                            };
                        } else {
                            runnable = new Runnable() { // from class: io.flutter.plugins.imagepicker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ImagePickerDelegate.this.handleChooseVideoResult(i2, intent);
                                }
                            };
                        }
                    } else {
                        runnable = new Runnable() { // from class: io.flutter.plugins.imagepicker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                            @Override // java.lang.Runnable
                            public final void run() {
                                ImagePickerDelegate.this.handleChooseMediaResult(i2, intent);
                            }
                        };
                    }
                } else {
                    runnable = new Runnable() { // from class: io.flutter.plugins.imagepicker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                        @Override // java.lang.Runnable
                        public final void run() {
                            ImagePickerDelegate.this.handleChooseMultiImageResult(i2, intent);
                        }
                    };
                }
            } else {
                runnable = new Runnable() { // from class: io.flutter.plugins.imagepicker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImagePickerDelegate.this.handleCaptureImageResult(i2);
                    }
                };
            }
        } else {
            runnable = new Runnable() { // from class: io.flutter.plugins.imagepicker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    ImagePickerDelegate.this.handleChooseImageResult(i2, intent);
                }
            };
        }
        this.executor.execute(runnable);
        return true;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.RequestPermissionsResultListener
    public boolean onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        boolean z;
        if (iArr.length > 0 && iArr[0] == 0) {
            z = true;
        } else {
            z = false;
        }
        if (i != REQUEST_CAMERA_IMAGE_PERMISSION) {
            if (i != REQUEST_CAMERA_VIDEO_PERMISSION) {
                return false;
            }
            if (z) {
                launchTakeVideoWithCameraIntent();
            }
        } else if (z) {
            launchTakeImageWithCameraIntent();
        }
        if (!z && (i == REQUEST_CAMERA_IMAGE_PERMISSION || i == REQUEST_CAMERA_VIDEO_PERMISSION)) {
            finishWithError("camera_access_denied", "The user did not allow camera access.");
        }
        return true;
    }

    @Nullable
    public Messages.CacheRetrievalResult retrieveLostImage() {
        int intValue;
        Map<String, Object> cacheMap = this.cache.getCacheMap();
        if (cacheMap.isEmpty()) {
            return null;
        }
        Messages.CacheRetrievalResult.Builder builder = new Messages.CacheRetrievalResult.Builder();
        Messages.CacheRetrievalType cacheRetrievalType = (Messages.CacheRetrievalType) cacheMap.get("type");
        if (cacheRetrievalType != null) {
            builder.setType(cacheRetrievalType);
        }
        builder.setError((Messages.CacheRetrievalError) cacheMap.get("error"));
        ArrayList arrayList = (ArrayList) cacheMap.get("pathList");
        if (arrayList != null) {
            ArrayList arrayList2 = new ArrayList();
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                String str = (String) obj;
                Double d = (Double) cacheMap.get("maxWidth");
                Double d2 = (Double) cacheMap.get("maxHeight");
                Integer num = (Integer) cacheMap.get("imageQuality");
                if (num == null) {
                    intValue = 100;
                } else {
                    intValue = num.intValue();
                }
                arrayList2.add(this.imageResizer.resizeImageIfNeeded(str, d, d2, intValue));
            }
            builder.setPaths(arrayList2);
        }
        this.cache.clear();
        return builder.build();
    }

    public void saveStateBeforeResult() {
        ImagePickerCache.CacheType cacheType;
        synchronized (this.pendingCallStateLock) {
            try {
                PendingCallState pendingCallState = this.pendingCallState;
                if (pendingCallState == null) {
                    return;
                }
                Messages.ImageSelectionOptions imageSelectionOptions = pendingCallState.imageOptions;
                ImagePickerCache imagePickerCache = this.cache;
                if (imageSelectionOptions != null) {
                    cacheType = ImagePickerCache.CacheType.IMAGE;
                } else {
                    cacheType = ImagePickerCache.CacheType.VIDEO;
                }
                imagePickerCache.saveType(cacheType);
                if (imageSelectionOptions != null) {
                    this.cache.saveDimensionWithOutputOptions(imageSelectionOptions);
                }
                Uri uri = this.pendingCameraMediaUri;
                if (uri != null) {
                    this.cache.savePendingCameraMediaUriPath(uri);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setCameraDevice(CameraDevice cameraDevice) {
        this.cameraDevice = cameraDevice;
    }

    public void takeImageWithCamera(@NonNull Messages.ImageSelectionOptions imageSelectionOptions, @NonNull Messages.Result<List<String>> result) {
        if (!setPendingOptionsAndResult(imageSelectionOptions, null, result)) {
            finishWithAlreadyActiveError(result);
        } else if (needRequestCameraPermission() && !this.permissionManager.isPermissionGranted("android.permission.CAMERA")) {
            this.permissionManager.askForPermission("android.permission.CAMERA", REQUEST_CAMERA_IMAGE_PERMISSION);
        } else {
            launchTakeImageWithCameraIntent();
        }
    }

    public void takeVideoWithCamera(@NonNull Messages.VideoSelectionOptions videoSelectionOptions, @NonNull Messages.Result<List<String>> result) {
        if (!setPendingOptionsAndResult(null, videoSelectionOptions, result)) {
            finishWithAlreadyActiveError(result);
        } else if (needRequestCameraPermission() && !this.permissionManager.isPermissionGranted("android.permission.CAMERA")) {
            this.permissionManager.askForPermission("android.permission.CAMERA", REQUEST_CAMERA_VIDEO_PERMISSION);
        } else {
            launchTakeVideoWithCameraIntent();
        }
    }

    @VisibleForTesting
    public ImagePickerDelegate(@NonNull Activity activity, @NonNull ImageResizer imageResizer, @Nullable Messages.ImageSelectionOptions imageSelectionOptions, @Nullable Messages.VideoSelectionOptions videoSelectionOptions, @Nullable Messages.Result<List<String>> result, @NonNull ImagePickerCache imagePickerCache, PermissionManager permissionManager, FileUriResolver fileUriResolver, FileUtils fileUtils, ExecutorService executorService) {
        this.pendingCallStateLock = new Object();
        this.activity = activity;
        this.imageResizer = imageResizer;
        this.fileProviderName = activity.getPackageName() + ".flutter.image_provider";
        if (result != null) {
            this.pendingCallState = new PendingCallState(imageSelectionOptions, videoSelectionOptions, result);
        }
        this.permissionManager = permissionManager;
        this.fileUriResolver = fileUriResolver;
        this.fileUtils = fileUtils;
        this.cache = imagePickerCache;
        this.executor = executorService;
    }
}
