.class public final synthetic Lkotlin/io/path/Illllllllllllllllllll;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwww:Ljava/nio/file/Path;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwww:Ljava/nio/file/Path;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/file/Path;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/jvm/functions/Function3;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlin/io/path/Illllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlin/io/path/Illllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/jvm/functions/Function3;

    .line 7
    .line 8
    iput-object p3, p0, Lkotlin/io/path/Illllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/file/Path;

    .line 9
    .line 10
    iput-object p4, p0, Lkotlin/io/path/Illllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/nio/file/Path;

    .line 11
    .line 12
    iput-object p5, p0, Lkotlin/io/path/Illllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwww:Ljava/nio/file/Path;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lkotlin/io/path/Illllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlin/io/path/Illllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/jvm/functions/Function3;

    .line 4
    .line 5
    iget-object v2, p0, Lkotlin/io/path/Illllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/nio/file/Path;

    .line 6
    .line 7
    iget-object v3, p0, Lkotlin/io/path/Illllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/nio/file/Path;

    .line 8
    .line 9
    iget-object v4, p0, Lkotlin/io/path/Illllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwww:Ljava/nio/file/Path;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    check-cast v5, Ljava/nio/file/Path;

    .line 13
    .line 14
    move-object v6, p2

    .line 15
    check-cast v6, Ljava/io/IOException;

    .line 16
    .line 17
    invoke-static/range {v0 .. v6}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
