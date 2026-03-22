.class Lcom/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getkeepsafe/relinker/ApkLibraryInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZipFileInZipEntry"
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/ZipEntry;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/ZipFile;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/getkeepsafe/relinker/ApkLibraryInstaller$ZipFileInZipEntry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/ZipEntry;

    .line 7
    .line 8
    return-void
.end method
