package io.flutter.plugins.imagepicker;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MessageCodec;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugins.imagepicker.Messages;
import j$.util.Objects;
import java.io.ByteArrayOutputStream;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class Messages {

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class CacheRetrievalError {
        @NonNull
        private String code;
        @Nullable
        private String message;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private String code;
            @Nullable
            private String message;

            @NonNull
            public CacheRetrievalError build() {
                CacheRetrievalError cacheRetrievalError = new CacheRetrievalError();
                cacheRetrievalError.setCode(this.code);
                cacheRetrievalError.setMessage(this.message);
                return cacheRetrievalError;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setCode(@NonNull String str) {
                this.code = str;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setMessage(@Nullable String str) {
                this.message = str;
                return this;
            }
        }

        @NonNull
        public static CacheRetrievalError fromList(@NonNull ArrayList<Object> arrayList) {
            CacheRetrievalError cacheRetrievalError = new CacheRetrievalError();
            cacheRetrievalError.setCode((String) arrayList.get(0));
            cacheRetrievalError.setMessage((String) arrayList.get(1));
            return cacheRetrievalError;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && CacheRetrievalError.class == obj.getClass()) {
                CacheRetrievalError cacheRetrievalError = (CacheRetrievalError) obj;
                if (this.code.equals(cacheRetrievalError.code) && Objects.equals(this.message, cacheRetrievalError.message)) {
                    return true;
                }
            }
            return false;
        }

        @NonNull
        public String getCode() {
            return this.code;
        }

        @Nullable
        public String getMessage() {
            return this.message;
        }

        public int hashCode() {
            return Objects.hash(this.code, this.message);
        }

        public void setCode(@NonNull String str) {
            if (str != null) {
                this.code = str;
                return;
            }
            throw new IllegalStateException("Nonnull field \"code\" is null.");
        }

        public void setMessage(@Nullable String str) {
            this.message = str;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(2);
            arrayList.add(this.code);
            arrayList.add(this.message);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class CacheRetrievalResult {
        @Nullable
        private CacheRetrievalError error;
        @NonNull
        private List<String> paths;
        @NonNull
        private CacheRetrievalType type;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private CacheRetrievalError error;
            @Nullable
            private List<String> paths;
            @Nullable
            private CacheRetrievalType type;

            @NonNull
            public CacheRetrievalResult build() {
                CacheRetrievalResult cacheRetrievalResult = new CacheRetrievalResult();
                cacheRetrievalResult.setType(this.type);
                cacheRetrievalResult.setError(this.error);
                cacheRetrievalResult.setPaths(this.paths);
                return cacheRetrievalResult;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setError(@Nullable CacheRetrievalError cacheRetrievalError) {
                this.error = cacheRetrievalError;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setPaths(@NonNull List<String> list) {
                this.paths = list;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setType(@NonNull CacheRetrievalType cacheRetrievalType) {
                this.type = cacheRetrievalType;
                return this;
            }
        }

        @NonNull
        public static CacheRetrievalResult fromList(@NonNull ArrayList<Object> arrayList) {
            CacheRetrievalResult cacheRetrievalResult = new CacheRetrievalResult();
            cacheRetrievalResult.setType((CacheRetrievalType) arrayList.get(0));
            cacheRetrievalResult.setError((CacheRetrievalError) arrayList.get(1));
            cacheRetrievalResult.setPaths((List) arrayList.get(2));
            return cacheRetrievalResult;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && CacheRetrievalResult.class == obj.getClass()) {
                CacheRetrievalResult cacheRetrievalResult = (CacheRetrievalResult) obj;
                if (this.type.equals(cacheRetrievalResult.type) && Objects.equals(this.error, cacheRetrievalResult.error) && this.paths.equals(cacheRetrievalResult.paths)) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        public CacheRetrievalError getError() {
            return this.error;
        }

        @NonNull
        public List<String> getPaths() {
            return this.paths;
        }

        @NonNull
        public CacheRetrievalType getType() {
            return this.type;
        }

        public int hashCode() {
            return Objects.hash(this.type, this.error, this.paths);
        }

        public void setError(@Nullable CacheRetrievalError cacheRetrievalError) {
            this.error = cacheRetrievalError;
        }

        public void setPaths(@NonNull List<String> list) {
            if (list != null) {
                this.paths = list;
                return;
            }
            throw new IllegalStateException("Nonnull field \"paths\" is null.");
        }

        public void setType(@NonNull CacheRetrievalType cacheRetrievalType) {
            if (cacheRetrievalType != null) {
                this.type = cacheRetrievalType;
                return;
            }
            throw new IllegalStateException("Nonnull field \"type\" is null.");
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(3);
            arrayList.add(this.type);
            arrayList.add(this.error);
            arrayList.add(this.paths);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public enum CacheRetrievalType {
        IMAGE(0),
        VIDEO(1);
        
        final int index;

        CacheRetrievalType(int i) {
            this.index = i;
        }
    }

    /* compiled from: Proguard */
    @Target({ElementType.METHOD})
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes6.dex */
    public @interface CanIgnoreReturnValue {
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class FlutterError extends RuntimeException {
        public final String code;
        public final Object details;

        public FlutterError(@NonNull String str, @Nullable String str2, @Nullable Object obj) {
            super(str2);
            this.code = str;
            this.details = obj;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class GeneralOptions {
        @NonNull
        private Boolean allowMultiple;
        @Nullable
        private Long limit;
        @NonNull
        private Boolean usePhotoPicker;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private Boolean allowMultiple;
            @Nullable
            private Long limit;
            @Nullable
            private Boolean usePhotoPicker;

            @NonNull
            public GeneralOptions build() {
                GeneralOptions generalOptions = new GeneralOptions();
                generalOptions.setAllowMultiple(this.allowMultiple);
                generalOptions.setUsePhotoPicker(this.usePhotoPicker);
                generalOptions.setLimit(this.limit);
                return generalOptions;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setAllowMultiple(@NonNull Boolean bool) {
                this.allowMultiple = bool;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setLimit(@Nullable Long l) {
                this.limit = l;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setUsePhotoPicker(@NonNull Boolean bool) {
                this.usePhotoPicker = bool;
                return this;
            }
        }

        @NonNull
        public static GeneralOptions fromList(@NonNull ArrayList<Object> arrayList) {
            GeneralOptions generalOptions = new GeneralOptions();
            generalOptions.setAllowMultiple((Boolean) arrayList.get(0));
            generalOptions.setUsePhotoPicker((Boolean) arrayList.get(1));
            generalOptions.setLimit((Long) arrayList.get(2));
            return generalOptions;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && GeneralOptions.class == obj.getClass()) {
                GeneralOptions generalOptions = (GeneralOptions) obj;
                if (this.allowMultiple.equals(generalOptions.allowMultiple) && this.usePhotoPicker.equals(generalOptions.usePhotoPicker) && Objects.equals(this.limit, generalOptions.limit)) {
                    return true;
                }
            }
            return false;
        }

        @NonNull
        public Boolean getAllowMultiple() {
            return this.allowMultiple;
        }

        @Nullable
        public Long getLimit() {
            return this.limit;
        }

        @NonNull
        public Boolean getUsePhotoPicker() {
            return this.usePhotoPicker;
        }

        public int hashCode() {
            return Objects.hash(this.allowMultiple, this.usePhotoPicker, this.limit);
        }

        public void setAllowMultiple(@NonNull Boolean bool) {
            if (bool != null) {
                this.allowMultiple = bool;
                return;
            }
            throw new IllegalStateException("Nonnull field \"allowMultiple\" is null.");
        }

        public void setLimit(@Nullable Long l) {
            this.limit = l;
        }

        public void setUsePhotoPicker(@NonNull Boolean bool) {
            if (bool != null) {
                this.usePhotoPicker = bool;
                return;
            }
            throw new IllegalStateException("Nonnull field \"usePhotoPicker\" is null.");
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(3);
            arrayList.add(this.allowMultiple);
            arrayList.add(this.usePhotoPicker);
            arrayList.add(this.limit);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface ImagePickerApi {

        /* compiled from: Proguard */
        /* renamed from: io.flutter.plugins.imagepicker.Messages$ImagePickerApi$-CC  reason: invalid class name */
        /* loaded from: classes6.dex */
        public final /* synthetic */ class CC {
            public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull BinaryMessenger binaryMessenger, @NonNull String str, @Nullable final ImagePickerApi imagePickerApi) {
                String str2;
                if (str.isEmpty()) {
                    str2 = "";
                } else {
                    str2 = "." + str;
                }
                BinaryMessenger.TaskQueue makeBackgroundTaskQueue = binaryMessenger.makeBackgroundTaskQueue();
                BasicMessageChannel basicMessageChannel = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.image_picker_android.ImagePickerApi.pickImages" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), makeBackgroundTaskQueue);
                if (imagePickerApi != null) {
                    basicMessageChannel.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.imagepicker.Wwwwwwwwwwwwwwwwwwwwwwww
                        @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                        public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                            Messages.ImagePickerApi.CC.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Messages.ImagePickerApi.this, obj, reply);
                        }
                    });
                } else {
                    basicMessageChannel.setMessageHandler(null);
                }
                BasicMessageChannel basicMessageChannel2 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.image_picker_android.ImagePickerApi.pickVideos" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), makeBackgroundTaskQueue);
                if (imagePickerApi != null) {
                    basicMessageChannel2.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.imagepicker.Wwwwwwwwwwwwwwwwwwwwwww
                        @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                        public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                            Messages.ImagePickerApi.CC.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Messages.ImagePickerApi.this, obj, reply);
                        }
                    });
                } else {
                    basicMessageChannel2.setMessageHandler(null);
                }
                BasicMessageChannel basicMessageChannel3 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.image_picker_android.ImagePickerApi.pickMedia" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                if (imagePickerApi != null) {
                    basicMessageChannel3.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.imagepicker.Wwwwwwwwwwwwwwwwwwwwww
                        @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                        public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                            Messages.ImagePickerApi.CC.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Messages.ImagePickerApi.this, obj, reply);
                        }
                    });
                } else {
                    basicMessageChannel3.setMessageHandler(null);
                }
                BasicMessageChannel basicMessageChannel4 = new BasicMessageChannel(binaryMessenger, "dev.flutter.pigeon.image_picker_android.ImagePickerApi.retrieveLostResults" + str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), makeBackgroundTaskQueue);
                if (imagePickerApi != null) {
                    basicMessageChannel4.setMessageHandler(new BasicMessageChannel.MessageHandler() { // from class: io.flutter.plugins.imagepicker.Wwwwwwwwwwwwwwwwwwwww
                        @Override // io.flutter.plugin.common.BasicMessageChannel.MessageHandler
                        public final void onMessage(Object obj, BasicMessageChannel.Reply reply) {
                            Messages.ImagePickerApi.CC.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Messages.ImagePickerApi.this, obj, reply);
                        }
                    });
                } else {
                    basicMessageChannel4.setMessageHandler(null);
                }
            }

            public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull BinaryMessenger binaryMessenger, @Nullable ImagePickerApi imagePickerApi) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwww(binaryMessenger, "", imagePickerApi);
            }

            public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImagePickerApi imagePickerApi, Object obj, BasicMessageChannel.Reply reply) {
                ArrayList<Object> arrayList = new ArrayList<>();
                try {
                    arrayList.add(0, imagePickerApi.retrieveLostResults());
                } catch (Throwable th) {
                    arrayList = Messages.wrapError(th);
                }
                reply.reply(arrayList);
            }

            public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImagePickerApi imagePickerApi, Object obj, final BasicMessageChannel.Reply reply) {
                final ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = (ArrayList) obj;
                imagePickerApi.pickMedia((MediaSelectionOptions) arrayList2.get(0), (GeneralOptions) arrayList2.get(1), new Result<List<String>>() { // from class: io.flutter.plugins.imagepicker.Messages.ImagePickerApi.3
                    @Override // io.flutter.plugins.imagepicker.Messages.Result
                    public void error(Throwable th) {
                        reply.reply(Messages.wrapError(th));
                    }

                    @Override // io.flutter.plugins.imagepicker.Messages.Result
                    public void success(List<String> list) {
                        arrayList.add(0, list);
                        reply.reply(arrayList);
                    }
                });
            }

            public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImagePickerApi imagePickerApi, Object obj, final BasicMessageChannel.Reply reply) {
                final ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = (ArrayList) obj;
                imagePickerApi.pickVideos((SourceSpecification) arrayList2.get(0), (VideoSelectionOptions) arrayList2.get(1), (GeneralOptions) arrayList2.get(2), new Result<List<String>>() { // from class: io.flutter.plugins.imagepicker.Messages.ImagePickerApi.2
                    @Override // io.flutter.plugins.imagepicker.Messages.Result
                    public void error(Throwable th) {
                        reply.reply(Messages.wrapError(th));
                    }

                    @Override // io.flutter.plugins.imagepicker.Messages.Result
                    public void success(List<String> list) {
                        arrayList.add(0, list);
                        reply.reply(arrayList);
                    }
                });
            }

            public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ImagePickerApi imagePickerApi, Object obj, final BasicMessageChannel.Reply reply) {
                final ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = (ArrayList) obj;
                imagePickerApi.pickImages((SourceSpecification) arrayList2.get(0), (ImageSelectionOptions) arrayList2.get(1), (GeneralOptions) arrayList2.get(2), new Result<List<String>>() { // from class: io.flutter.plugins.imagepicker.Messages.ImagePickerApi.1
                    @Override // io.flutter.plugins.imagepicker.Messages.Result
                    public void error(Throwable th) {
                        reply.reply(Messages.wrapError(th));
                    }

                    @Override // io.flutter.plugins.imagepicker.Messages.Result
                    public void success(List<String> list) {
                        arrayList.add(0, list);
                        reply.reply(arrayList);
                    }
                });
            }

            @NonNull
            public static MessageCodec<Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                return PigeonCodec.INSTANCE;
            }
        }

        void pickImages(@NonNull SourceSpecification sourceSpecification, @NonNull ImageSelectionOptions imageSelectionOptions, @NonNull GeneralOptions generalOptions, @NonNull Result<List<String>> result);

        void pickMedia(@NonNull MediaSelectionOptions mediaSelectionOptions, @NonNull GeneralOptions generalOptions, @NonNull Result<List<String>> result);

        void pickVideos(@NonNull SourceSpecification sourceSpecification, @NonNull VideoSelectionOptions videoSelectionOptions, @NonNull GeneralOptions generalOptions, @NonNull Result<List<String>> result);

        @Nullable
        CacheRetrievalResult retrieveLostResults();
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class ImageSelectionOptions {
        @Nullable
        private Double maxHeight;
        @Nullable
        private Double maxWidth;
        @NonNull
        private Long quality;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private Double maxHeight;
            @Nullable
            private Double maxWidth;
            @Nullable
            private Long quality;

            @NonNull
            public ImageSelectionOptions build() {
                ImageSelectionOptions imageSelectionOptions = new ImageSelectionOptions();
                imageSelectionOptions.setMaxWidth(this.maxWidth);
                imageSelectionOptions.setMaxHeight(this.maxHeight);
                imageSelectionOptions.setQuality(this.quality);
                return imageSelectionOptions;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setMaxHeight(@Nullable Double d) {
                this.maxHeight = d;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setMaxWidth(@Nullable Double d) {
                this.maxWidth = d;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setQuality(@NonNull Long l) {
                this.quality = l;
                return this;
            }
        }

        @NonNull
        public static ImageSelectionOptions fromList(@NonNull ArrayList<Object> arrayList) {
            ImageSelectionOptions imageSelectionOptions = new ImageSelectionOptions();
            imageSelectionOptions.setMaxWidth((Double) arrayList.get(0));
            imageSelectionOptions.setMaxHeight((Double) arrayList.get(1));
            imageSelectionOptions.setQuality((Long) arrayList.get(2));
            return imageSelectionOptions;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && ImageSelectionOptions.class == obj.getClass()) {
                ImageSelectionOptions imageSelectionOptions = (ImageSelectionOptions) obj;
                if (Objects.equals(this.maxWidth, imageSelectionOptions.maxWidth) && Objects.equals(this.maxHeight, imageSelectionOptions.maxHeight) && this.quality.equals(imageSelectionOptions.quality)) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        public Double getMaxHeight() {
            return this.maxHeight;
        }

        @Nullable
        public Double getMaxWidth() {
            return this.maxWidth;
        }

        @NonNull
        public Long getQuality() {
            return this.quality;
        }

        public int hashCode() {
            return Objects.hash(this.maxWidth, this.maxHeight, this.quality);
        }

        public void setMaxHeight(@Nullable Double d) {
            this.maxHeight = d;
        }

        public void setMaxWidth(@Nullable Double d) {
            this.maxWidth = d;
        }

        public void setQuality(@NonNull Long l) {
            if (l != null) {
                this.quality = l;
                return;
            }
            throw new IllegalStateException("Nonnull field \"quality\" is null.");
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(3);
            arrayList.add(this.maxWidth);
            arrayList.add(this.maxHeight);
            arrayList.add(this.quality);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class MediaSelectionOptions {
        @NonNull
        private ImageSelectionOptions imageSelectionOptions;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private ImageSelectionOptions imageSelectionOptions;

            @NonNull
            public MediaSelectionOptions build() {
                MediaSelectionOptions mediaSelectionOptions = new MediaSelectionOptions();
                mediaSelectionOptions.setImageSelectionOptions(this.imageSelectionOptions);
                return mediaSelectionOptions;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setImageSelectionOptions(@NonNull ImageSelectionOptions imageSelectionOptions) {
                this.imageSelectionOptions = imageSelectionOptions;
                return this;
            }
        }

        @NonNull
        public static MediaSelectionOptions fromList(@NonNull ArrayList<Object> arrayList) {
            MediaSelectionOptions mediaSelectionOptions = new MediaSelectionOptions();
            mediaSelectionOptions.setImageSelectionOptions((ImageSelectionOptions) arrayList.get(0));
            return mediaSelectionOptions;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && MediaSelectionOptions.class == obj.getClass()) {
                return this.imageSelectionOptions.equals(((MediaSelectionOptions) obj).imageSelectionOptions);
            }
            return false;
        }

        @NonNull
        public ImageSelectionOptions getImageSelectionOptions() {
            return this.imageSelectionOptions;
        }

        public int hashCode() {
            return Objects.hash(this.imageSelectionOptions);
        }

        public void setImageSelectionOptions(@NonNull ImageSelectionOptions imageSelectionOptions) {
            if (imageSelectionOptions != null) {
                this.imageSelectionOptions = imageSelectionOptions;
                return;
            }
            throw new IllegalStateException("Nonnull field \"imageSelectionOptions\" is null.");
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(1);
            arrayList.add(this.imageSelectionOptions);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface NullableResult<T> {
        void error(@NonNull Throwable th);

        void success(@Nullable T t);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class PigeonCodec extends StandardMessageCodec {
        public static final PigeonCodec INSTANCE = new PigeonCodec();

        private PigeonCodec() {
        }

        @Override // io.flutter.plugin.common.StandardMessageCodec
        public Object readValueOfType(byte b, @NonNull ByteBuffer byteBuffer) {
            switch (b) {
                case -127:
                    Object readValue = readValue(byteBuffer);
                    if (readValue == null) {
                        return null;
                    }
                    return SourceCamera.values()[((Long) readValue).intValue()];
                case -126:
                    Object readValue2 = readValue(byteBuffer);
                    if (readValue2 == null) {
                        return null;
                    }
                    return SourceType.values()[((Long) readValue2).intValue()];
                case -125:
                    Object readValue3 = readValue(byteBuffer);
                    if (readValue3 == null) {
                        return null;
                    }
                    return CacheRetrievalType.values()[((Long) readValue3).intValue()];
                case -124:
                    return GeneralOptions.fromList((ArrayList) readValue(byteBuffer));
                case -123:
                    return ImageSelectionOptions.fromList((ArrayList) readValue(byteBuffer));
                case -122:
                    return MediaSelectionOptions.fromList((ArrayList) readValue(byteBuffer));
                case -121:
                    return VideoSelectionOptions.fromList((ArrayList) readValue(byteBuffer));
                case -120:
                    return SourceSpecification.fromList((ArrayList) readValue(byteBuffer));
                case -119:
                    return CacheRetrievalError.fromList((ArrayList) readValue(byteBuffer));
                case -118:
                    return CacheRetrievalResult.fromList((ArrayList) readValue(byteBuffer));
                default:
                    return super.readValueOfType(b, byteBuffer);
            }
        }

        @Override // io.flutter.plugin.common.StandardMessageCodec
        public void writeValue(@NonNull ByteArrayOutputStream byteArrayOutputStream, Object obj) {
            Integer num = null;
            if (obj instanceof SourceCamera) {
                byteArrayOutputStream.write(129);
                if (obj != null) {
                    num = Integer.valueOf(((SourceCamera) obj).index);
                }
                writeValue(byteArrayOutputStream, num);
            } else if (obj instanceof SourceType) {
                byteArrayOutputStream.write(130);
                if (obj != null) {
                    num = Integer.valueOf(((SourceType) obj).index);
                }
                writeValue(byteArrayOutputStream, num);
            } else if (obj instanceof CacheRetrievalType) {
                byteArrayOutputStream.write(131);
                if (obj != null) {
                    num = Integer.valueOf(((CacheRetrievalType) obj).index);
                }
                writeValue(byteArrayOutputStream, num);
            } else if (obj instanceof GeneralOptions) {
                byteArrayOutputStream.write(132);
                writeValue(byteArrayOutputStream, ((GeneralOptions) obj).toList());
            } else if (obj instanceof ImageSelectionOptions) {
                byteArrayOutputStream.write(133);
                writeValue(byteArrayOutputStream, ((ImageSelectionOptions) obj).toList());
            } else if (obj instanceof MediaSelectionOptions) {
                byteArrayOutputStream.write(134);
                writeValue(byteArrayOutputStream, ((MediaSelectionOptions) obj).toList());
            } else if (obj instanceof VideoSelectionOptions) {
                byteArrayOutputStream.write(135);
                writeValue(byteArrayOutputStream, ((VideoSelectionOptions) obj).toList());
            } else if (obj instanceof SourceSpecification) {
                byteArrayOutputStream.write(136);
                writeValue(byteArrayOutputStream, ((SourceSpecification) obj).toList());
            } else if (obj instanceof CacheRetrievalError) {
                byteArrayOutputStream.write(137);
                writeValue(byteArrayOutputStream, ((CacheRetrievalError) obj).toList());
            } else if (obj instanceof CacheRetrievalResult) {
                byteArrayOutputStream.write(138);
                writeValue(byteArrayOutputStream, ((CacheRetrievalResult) obj).toList());
            } else {
                super.writeValue(byteArrayOutputStream, obj);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface Result<T> {
        void error(@NonNull Throwable th);

        void success(@NonNull T t);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public enum SourceCamera {
        REAR(0),
        FRONT(1);
        
        final int index;

        SourceCamera(int i) {
            this.index = i;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class SourceSpecification {
        @Nullable
        private SourceCamera camera;
        @NonNull
        private SourceType type;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private SourceCamera camera;
            @Nullable
            private SourceType type;

            @NonNull
            public SourceSpecification build() {
                SourceSpecification sourceSpecification = new SourceSpecification();
                sourceSpecification.setType(this.type);
                sourceSpecification.setCamera(this.camera);
                return sourceSpecification;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setCamera(@Nullable SourceCamera sourceCamera) {
                this.camera = sourceCamera;
                return this;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setType(@NonNull SourceType sourceType) {
                this.type = sourceType;
                return this;
            }
        }

        @NonNull
        public static SourceSpecification fromList(@NonNull ArrayList<Object> arrayList) {
            SourceSpecification sourceSpecification = new SourceSpecification();
            sourceSpecification.setType((SourceType) arrayList.get(0));
            sourceSpecification.setCamera((SourceCamera) arrayList.get(1));
            return sourceSpecification;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && SourceSpecification.class == obj.getClass()) {
                SourceSpecification sourceSpecification = (SourceSpecification) obj;
                if (this.type.equals(sourceSpecification.type) && Objects.equals(this.camera, sourceSpecification.camera)) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        public SourceCamera getCamera() {
            return this.camera;
        }

        @NonNull
        public SourceType getType() {
            return this.type;
        }

        public int hashCode() {
            return Objects.hash(this.type, this.camera);
        }

        public void setCamera(@Nullable SourceCamera sourceCamera) {
            this.camera = sourceCamera;
        }

        public void setType(@NonNull SourceType sourceType) {
            if (sourceType != null) {
                this.type = sourceType;
                return;
            }
            throw new IllegalStateException("Nonnull field \"type\" is null.");
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(2);
            arrayList.add(this.type);
            arrayList.add(this.camera);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public enum SourceType {
        CAMERA(0),
        GALLERY(1);
        
        final int index;

        SourceType(int i) {
            this.index = i;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class VideoSelectionOptions {
        @Nullable
        private Long maxDurationSeconds;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public static final class Builder {
            @Nullable
            private Long maxDurationSeconds;

            @NonNull
            public VideoSelectionOptions build() {
                VideoSelectionOptions videoSelectionOptions = new VideoSelectionOptions();
                videoSelectionOptions.setMaxDurationSeconds(this.maxDurationSeconds);
                return videoSelectionOptions;
            }

            @NonNull
            @CanIgnoreReturnValue
            public Builder setMaxDurationSeconds(@Nullable Long l) {
                this.maxDurationSeconds = l;
                return this;
            }
        }

        @NonNull
        public static VideoSelectionOptions fromList(@NonNull ArrayList<Object> arrayList) {
            VideoSelectionOptions videoSelectionOptions = new VideoSelectionOptions();
            videoSelectionOptions.setMaxDurationSeconds((Long) arrayList.get(0));
            return videoSelectionOptions;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && VideoSelectionOptions.class == obj.getClass()) {
                return Objects.equals(this.maxDurationSeconds, ((VideoSelectionOptions) obj).maxDurationSeconds);
            }
            return false;
        }

        @Nullable
        public Long getMaxDurationSeconds() {
            return this.maxDurationSeconds;
        }

        public int hashCode() {
            return Objects.hash(this.maxDurationSeconds);
        }

        public void setMaxDurationSeconds(@Nullable Long l) {
            this.maxDurationSeconds = l;
        }

        @NonNull
        public ArrayList<Object> toList() {
            ArrayList<Object> arrayList = new ArrayList<>(1);
            arrayList.add(this.maxDurationSeconds);
            return arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface VoidResult {
        void error(@NonNull Throwable th);

        void success();
    }

    @NonNull
    public static ArrayList<Object> wrapError(@NonNull Throwable th) {
        ArrayList<Object> arrayList = new ArrayList<>(3);
        if (th instanceof FlutterError) {
            FlutterError flutterError = (FlutterError) th;
            arrayList.add(flutterError.code);
            arrayList.add(flutterError.getMessage());
            arrayList.add(flutterError.details);
            return arrayList;
        }
        arrayList.add(th.toString());
        arrayList.add(th.getClass().getSimpleName());
        arrayList.add("Cause: " + th.getCause() + ", Stacktrace: " + Log.getStackTraceString(th));
        return arrayList;
    }
}
