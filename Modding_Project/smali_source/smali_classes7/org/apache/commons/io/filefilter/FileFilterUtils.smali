.class public Lorg/apache/commons/io/filefilter/FileFilterUtils;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/apache/commons/io/filefilter/IOFileFilter;

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "CVS"

    .line 6
    .line 7
    invoke-static {v1}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x2

    .line 12
    new-array v3, v2, [Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object v0, v3, v4

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    aput-object v1, v3, v0

    .line 19
    .line 20
    invoke-static {v3}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sput-object v1, Lorg/apache/commons/io/filefilter/FileFilterUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 29
    .line 30
    invoke-static {}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v3, ".svn"

    .line 35
    .line 36
    invoke-static {v3}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    new-array v2, v2, [Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 41
    .line 42
    aput-object v1, v2, v4

    .line 43
    .line 44
    aput-object v3, v2, v0

    .line 45
    .line 46
    invoke-static {v2}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lorg/apache/commons/io/filefilter/FileFilterUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 55
    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static varargs Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    array-length v1, p0

    .line 6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    array-length v2, p0

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    aget-object v2, p0, v1

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "The filter["

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, "] is null"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :cond_1
    return-object v0

    .line 52
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    const-string v0, "The filters must not be null"

    .line 55
    .line 56
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/filefilter/NotFileFilter;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/io/filefilter/NotFileFilter;-><init>(Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/filefilter/NameFileFilter;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/commons/io/filefilter/NameFileFilter;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 2
    .line 3
    return-object v0
.end method

.method public static varargs Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/io/filefilter/AndFileFilter;

    .line 2
    .line 3
    invoke-static {p0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lorg/apache/commons/io/filefilter/AndFileFilter;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
