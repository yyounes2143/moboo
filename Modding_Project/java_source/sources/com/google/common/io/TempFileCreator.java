package com.google.common.io;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.StandardSystemProperty;
import com.google.common.base.Throwables;
import com.google.common.collect.ImmutableList;
import com.google.common.io.TempFileCreator;
import j$.util.Objects;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.file.FileSystem;
import java.nio.file.FileSystems;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.AclEntry;
import java.nio.file.attribute.AclEntryFlag;
import java.nio.file.attribute.AclEntryType;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.PosixFilePermissions;
import java.nio.file.attribute.UserPrincipal;
import java.nio.file.attribute.UserPrincipalLookupService;
import java.util.EnumSet;
import java.util.Set;
/* compiled from: Proguard */
@ElementTypesAreNonnullByDefault
@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes5.dex */
abstract class TempFileCreator {
    static final TempFileCreator INSTANCE = pickSecureCreator();

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static final class JavaIoCreator extends TempFileCreator {
        private static final int TEMP_DIR_ATTEMPTS = 10000;

        private JavaIoCreator() {
            super();
        }

        @Override // com.google.common.io.TempFileCreator
        public File createTempDir() {
            File file = new File(StandardSystemProperty.JAVA_IO_TMPDIR.value());
            String str = System.currentTimeMillis() + "-";
            for (int i = 0; i < 10000; i++) {
                File file2 = new File(file, str + i);
                if (file2.mkdir()) {
                    return file2;
                }
            }
            throw new IllegalStateException("Failed to create directory within 10000 attempts (tried " + str + "0 to " + str + "9999)");
        }

        @Override // com.google.common.io.TempFileCreator
        public File createTempFile(String str) throws IOException {
            return File.createTempFile(str, null, null);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static final class ThrowingCreator extends TempFileCreator {
        private static final String MESSAGE = "Guava cannot securely create temporary files or directories under SDK versions before Jelly Bean. You can create one yourself, either in the insecure default directory or in a more secure directory, such as context.getCacheDir(). For more information, see the Javadoc for Files.createTempDir().";

        private ThrowingCreator() {
            super();
        }

        @Override // com.google.common.io.TempFileCreator
        public File createTempDir() {
            throw new IllegalStateException(MESSAGE);
        }

        @Override // com.google.common.io.TempFileCreator
        public File createTempFile(String str) throws IOException {
            throw new IOException(MESSAGE);
        }
    }

    private static TempFileCreator pickSecureCreator() {
        try {
            try {
                Class.forName("java.nio.file.Path");
                return new JavaNioCreator();
            } catch (ClassNotFoundException unused) {
                if (((Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null)).intValue() < ((Integer) Class.forName("android.os.Build$VERSION_CODES").getField("JELLY_BEAN").get(null)).intValue()) {
                    return new ThrowingCreator();
                }
                return new JavaIoCreator();
            }
        } catch (ClassNotFoundException unused2) {
            return new ThrowingCreator();
        } catch (IllegalAccessException unused3) {
            return new ThrowingCreator();
        } catch (NoSuchFieldException unused4) {
            return new ThrowingCreator();
        }
    }

    @VisibleForTesting
    @IgnoreJRERequirement
    public static void testMakingUserPermissionsFromScratch() throws IOException {
        JavaNioCreator.access$300().get();
    }

    public abstract File createTempDir();

    public abstract File createTempFile(String str) throws IOException;

    private TempFileCreator() {
    }

    /* compiled from: Proguard */
    @IgnoreJRERequirement
    /* loaded from: classes5.dex */
    public static final class JavaNioCreator extends TempFileCreator {
        private static final PermissionSupplier directoryPermissions;
        private static final PermissionSupplier filePermissions;

        /* compiled from: Proguard */
        @IgnoreJRERequirement
        /* loaded from: classes5.dex */
        public interface PermissionSupplier {
            FileAttribute<?> get() throws IOException;
        }

        static {
            FileSystem fileSystem;
            Set supportedFileAttributeViews;
            fileSystem = FileSystems.getDefault();
            supportedFileAttributeViews = fileSystem.supportedFileAttributeViews();
            if (supportedFileAttributeViews.contains("posix")) {
                filePermissions = new PermissionSupplier() { // from class: com.google.common.io.Wwwwwwwwwwwwwww
                    @Override // com.google.common.io.TempFileCreator.JavaNioCreator.PermissionSupplier
                    public final FileAttribute get() {
                        return TempFileCreator.JavaNioCreator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                };
                directoryPermissions = new PermissionSupplier() { // from class: com.google.common.io.Wwwwwwwwwwwwww
                    @Override // com.google.common.io.TempFileCreator.JavaNioCreator.PermissionSupplier
                    public final FileAttribute get() {
                        return TempFileCreator.JavaNioCreator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                };
            } else if (supportedFileAttributeViews.contains("acl")) {
                PermissionSupplier userPermissions = userPermissions();
                directoryPermissions = userPermissions;
                filePermissions = userPermissions;
            } else {
                PermissionSupplier permissionSupplier = new PermissionSupplier() { // from class: com.google.common.io.Wwwwwwwwwwwww
                    @Override // com.google.common.io.TempFileCreator.JavaNioCreator.PermissionSupplier
                    public final FileAttribute get() {
                        return TempFileCreator.JavaNioCreator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                };
                directoryPermissions = permissionSupplier;
                filePermissions = permissionSupplier;
            }
        }

        private JavaNioCreator() {
            super();
        }

        public static /* synthetic */ FileAttribute Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IOException iOException) {
            throw new IOException("Could not find user", iOException);
        }

        public static /* synthetic */ FileAttribute Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            FileSystem fileSystem;
            StringBuilder sb = new StringBuilder();
            sb.append("unrecognized FileSystem type ");
            fileSystem = FileSystems.getDefault();
            sb.append(fileSystem);
            throw new IOException(sb.toString());
        }

        public static /* synthetic */ FileAttribute Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Set fromString;
            FileAttribute asFileAttribute;
            fromString = PosixFilePermissions.fromString("rw-------");
            asFileAttribute = PosixFilePermissions.asFileAttribute(fromString);
            return asFileAttribute;
        }

        public static /* synthetic */ FileAttribute Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Set fromString;
            FileAttribute asFileAttribute;
            fromString = PosixFilePermissions.fromString("rwx------");
            asFileAttribute = PosixFilePermissions.asFileAttribute(fromString);
            return asFileAttribute;
        }

        public static /* synthetic */ PermissionSupplier access$300() {
            return userPermissions();
        }

        private static String getUsername() {
            String value = StandardSystemProperty.USER_NAME.value();
            Objects.requireNonNull(value);
            try {
                Class<?> cls = Class.forName("java.lang.ProcessHandle");
                Class<?> cls2 = Class.forName("java.lang.ProcessHandle$Info");
                Class<?> cls3 = Class.forName("j$.util.Optional");
                Method method = cls.getMethod("current", null);
                Method method2 = cls.getMethod("info", null);
                Object invoke = cls3.getMethod("orElse", Object.class).invoke(cls2.getMethod("user", null).invoke(method2.invoke(method.invoke(null, null), null), null), value);
                Objects.requireNonNull(invoke);
                return (String) invoke;
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException unused) {
                return value;
            } catch (InvocationTargetException e) {
                Throwables.throwIfUnchecked(e.getCause());
                return value;
            }
        }

        private static PermissionSupplier userPermissions() {
            FileSystem fileSystem;
            UserPrincipalLookupService userPrincipalLookupService;
            UserPrincipal lookupPrincipalByName;
            AclEntry.Builder newBuilder;
            AclEntryType aclEntryType;
            AclEntry.Builder type;
            AclEntry.Builder principal;
            AclEntry.Builder permissions;
            AclEntryFlag aclEntryFlag;
            AclEntryFlag aclEntryFlag2;
            AclEntry.Builder flags;
            AclEntry build;
            try {
                fileSystem = FileSystems.getDefault();
                userPrincipalLookupService = fileSystem.getUserPrincipalLookupService();
                lookupPrincipalByName = userPrincipalLookupService.lookupPrincipalByName(getUsername());
                newBuilder = AclEntry.newBuilder();
                aclEntryType = AclEntryType.ALLOW;
                type = newBuilder.setType(aclEntryType);
                principal = type.setPrincipal(lookupPrincipalByName);
                permissions = principal.setPermissions(EnumSet.allOf(Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
                aclEntryFlag = AclEntryFlag.DIRECTORY_INHERIT;
                aclEntryFlag2 = AclEntryFlag.FILE_INHERIT;
                flags = permissions.setFlags(aclEntryFlag, aclEntryFlag2);
                build = flags.build();
                final ImmutableList of = ImmutableList.of(build);
                final FileAttribute<ImmutableList<AclEntry>> fileAttribute = new FileAttribute<ImmutableList<AclEntry>>() { // from class: com.google.common.io.TempFileCreator.JavaNioCreator.1
                    @Override // java.nio.file.attribute.FileAttribute
                    public String name() {
                        return "acl:acl";
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // java.nio.file.attribute.FileAttribute
                    public ImmutableList<AclEntry> value() {
                        return ImmutableList.this;
                    }
                };
                return new PermissionSupplier() { // from class: com.google.common.io.Wwwwwwwwwwww
                    @Override // com.google.common.io.TempFileCreator.JavaNioCreator.PermissionSupplier
                    public final FileAttribute get() {
                        return TempFileCreator.JavaNioCreator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fileAttribute);
                    }
                };
            } catch (IOException e) {
                return new PermissionSupplier() { // from class: com.google.common.io.Wwwwwwwwwww
                    @Override // com.google.common.io.TempFileCreator.JavaNioCreator.PermissionSupplier
                    public final FileAttribute get() {
                        return TempFileCreator.JavaNioCreator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e);
                    }
                };
            }
        }

        @Override // com.google.common.io.TempFileCreator
        public File createTempDir() {
            Path path;
            Path createTempDirectory;
            File file;
            try {
                path = Paths.get(StandardSystemProperty.JAVA_IO_TMPDIR.value(), new String[0]);
                createTempDirectory = java.nio.file.Files.createTempDirectory(path, null, directoryPermissions.get());
                file = createTempDirectory.toFile();
                return file;
            } catch (IOException e) {
                throw new IllegalStateException("Failed to create directory", e);
            }
        }

        @Override // com.google.common.io.TempFileCreator
        public File createTempFile(String str) throws IOException {
            Path path;
            Path createTempFile;
            File file;
            path = Paths.get(StandardSystemProperty.JAVA_IO_TMPDIR.value(), new String[0]);
            createTempFile = java.nio.file.Files.createTempFile(path, str, null, filePermissions.get());
            file = createTempFile.toFile();
            return file;
        }

        public static /* synthetic */ FileAttribute Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FileAttribute fileAttribute) {
            return fileAttribute;
        }
    }
}
