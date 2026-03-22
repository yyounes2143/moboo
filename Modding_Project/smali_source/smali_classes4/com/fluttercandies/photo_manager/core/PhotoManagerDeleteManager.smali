.class public final Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010%\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001HB\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\t\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\t\u0010\nJ)\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001b\u0010\u0016\u001a\u00020\u00082\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\'\u0010\u001c\u001a\u00020\u00082\u000e\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u00132\u0006\u0010\u001b\u001a\u00020\u001aH\u0007\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ?\u0010 \u001a\u00020\u00082&\u0010\u0019\u001a\"\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u001ej\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0018`\u001f2\u0006\u0010\u001b\u001a\u00020\u001aH\u0007\u00a2\u0006\u0004\u0008 \u0010!J\'\u0010\"\u001a\u00020\u00082\u000e\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u00132\u0006\u0010\u001b\u001a\u00020\u001aH\u0007\u00a2\u0006\u0004\u0008\"\u0010\u001dJ\u0017\u0010#\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\u0008H\u0003\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010\'\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\'\u0010&R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008 \u0010(\u001a\u0004\u0008)\u0010*R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0016\u0010.\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010-R\"\u00101\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00180/8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u00100R\u001a\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u0014028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u00103R\u001a\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u0014028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u00103R \u0010:\u001a\u000c\u0012\u0008\u0012\u000607R\u00020\u0000068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u001c\u0010=\u001a\u0008\u0018\u000107R\u00020\u00008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0016\u0010?\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010-R\u0018\u0010B\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR\u0018\u0010D\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010AR\u0014\u0010G\u001a\u00020E8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010F\u00a8\u0006I"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;",
        "Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;",
        "Landroid/content/Context;",
        "context",
        "Landroid/app/Activity;",
        "activity",
        "<init>",
        "(Landroid/content/Context;Landroid/app/Activity;)V",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/app/Activity;)V",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "intent",
        "",
        "onActivityResult",
        "(IILandroid/content/Intent;)Z",
        "",
        "",
        "ids",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/util/List;)V",
        "Landroid/net/Uri;",
        "uris",
        "Lcom/fluttercandies/photo_manager/util/ResultHandler;",
        "resultHandler",
        "Wwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/util/List;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/util/HashMap;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "(I)V",
        "Wwwwwwwwwwwwwwwwwwww",
        "()V",
        "Wwwwwwwwwwwwwwwwwwwww",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "Landroid/app/Activity;",
        "I",
        "androidQDeleteRequestCode",
        "",
        "Ljava/util/Map;",
        "androidQUriMap",
        "",
        "Ljava/util/List;",
        "androidQSuccessIds",
        "androidQRemovedIds",
        "Ljava/util/LinkedList;",
        "Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;",
        "Wwwwwwwwwwwwwwwwwww",
        "Ljava/util/LinkedList;",
        "waitPermissionQueue",
        "Wwwwwwwwwwwwwwwwww",
        "Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;",
        "currentTask",
        "Wwwwwwwwwwwwwwwww",
        "androidRDeleteRequestCode",
        "Wwwwwwwwwwwwwwww",
        "Lcom/fluttercandies/photo_manager/util/ResultHandler;",
        "androidRHandler",
        "Wwwwwwwwwwwwwww",
        "androidQHandler",
        "Landroid/content/ContentResolver;",
        "()Landroid/content/ContentResolver;",
        "cr",
        "AndroidQDeleteTask",
        "photo_manager_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPhotoManagerDeleteManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhotoManagerDeleteManager.kt\ncom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,207:1\n37#2:208\n36#2,3:209\n1617#3,9:212\n1869#3:221\n1870#3:223\n1626#3:224\n1617#3,9:225\n1869#3:234\n1870#3:236\n1626#3:237\n1#4:222\n1#4:235\n*S KotlinDebug\n*F\n+ 1 PhotoManagerDeleteManager.kt\ncom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager\n*L\n97#1:208\n97#1:209,3\n112#1:212,9\n112#1:221\n112#1:223\n112#1:224\n196#1:225,9\n196#1:234\n196#1:236\n196#1:237\n112#1:222\n196#1:235\n*E\n"
    }
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/util/ResultHandler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/util/ResultHandler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwww:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwww:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwww:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 7
    .line 8
    const p1, 0x9c86

    .line 9
    .line 10
    .line 11
    iput p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 12
    .line 13
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 19
    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 26
    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 33
    .line 34
    new-instance p1, Ljava/util/LinkedList;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwww:Ljava/util/LinkedList;

    .line 40
    .line 41
    const p1, 0x9c85

    .line 42
    .line 43
    .line 44
    iput p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwww:I

    .line 45
    .line 46
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    const-string p0, "?"

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwww()V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwww:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwww()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iput-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwww()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/String;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 31
    .line 32
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroid/net/Uri;

    .line 37
    .line 38
    if-nez v2, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwwwwww()Landroid/content/ContentResolver;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3, v2, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object v2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 54
    .line 55
    check-cast v2, Ljava/lang/Iterable;

    .line 56
    .line 57
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/util/Collection;

    .line 62
    .line 63
    iget-object v3, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 64
    .line 65
    check-cast v3, Ljava/lang/Iterable;

    .line 66
    .line 67
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Ljava/lang/Iterable;

    .line 72
    .line 73
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v0, v2}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 88
    .line 89
    .line 90
    iput-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    .line 91
    .line 92
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/fluttercandies/photo_manager/util/ResultHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1e
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/fluttercandies/photo_manager/util/ResultHandler;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwwwwww()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p1, Ljava/lang/Iterable;

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/net/Uri;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x1

    .line 37
    invoke-static {p2, v0, p1}, Lcom/fluttercandies/photo_manager/core/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/ContentResolver;Ljava/util/Collection;Z)Landroid/app/PendingIntent;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget v2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwww:I

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v3, 0x0

    .line 54
    const/4 v4, 0x0

    .line 55
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwww(I)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    .line 4
    iget-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lio/flutter/plugin/common/MethodCall;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "ids"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/util/List;

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_0
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwww()Landroid/content/ContentResolver;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/HashMap;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V
    .locals 3
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/fluttercandies/photo_manager/util/ResultHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/fluttercandies/photo_manager/util/ResultHandler;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwww:Ljava/util/LinkedList;

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/util/LinkedList;->clear()V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Ljava/util/Map$Entry;

    .line 47
    .line 48
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/net/Uri;

    .line 53
    .line 54
    if-nez v0, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    check-cast p2, Ljava/lang/String;

    .line 62
    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwwwwww()Landroid/content/ContentResolver;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    invoke-static {v1}, Lcom/fluttercandies/photo_manager/core/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_1

    .line 83
    .line 84
    new-instance v2, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;

    .line 85
    .line 86
    invoke-static {v1}, Lcom/fluttercandies/photo_manager/core/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Landroid/app/RecoverableSecurityException;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-direct {v2, p0, p2, v0, v1}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;-><init>(Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;Ljava/lang/String;Landroid/net/Uri;Landroid/app/RecoverableSecurityException;)V

    .line 91
    .line 92
    .line 93
    iget-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwww:Ljava/util/LinkedList;

    .line 94
    .line 95
    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const-string p1, "delete assets error in api 29"

    .line 100
    .line 101
    invoke-static {p1, v1}, Lcom/fluttercandies/photo_manager/util/LogUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwww()V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_2
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwww()V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;Lcom/fluttercandies/photo_manager/util/ResultHandler;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/fluttercandies/photo_manager/util/ResultHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1e
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/fluttercandies/photo_manager/util/ResultHandler;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/util/ResultHandler;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwwwwww()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p1, Ljava/lang/Iterable;

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/net/Uri;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-static {p2, v0}, Lcom/fluttercandies/photo_manager/core/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/ContentResolver;Ljava/util/Collection;)Landroid/app/PendingIntent;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget v2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwww:I

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v3, 0x0

    .line 53
    const/4 v4, 0x0

    .line 54
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 55
    .line 56
    .line 57
    :cond_2
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;)V
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/lang/Iterable;

    .line 3
    .line 4
    new-instance v6, Lcom/fluttercandies/photo_manager/core/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 5
    .line 6
    invoke-direct {v6}, Lcom/fluttercandies/photo_manager/core/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>()V

    .line 7
    .line 8
    .line 9
    const/16 v7, 0x1e

    .line 10
    .line 11
    const/4 v8, 0x0

    .line 12
    const-string v1, ","

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwwwwww()Landroid/content/ContentResolver;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sget-object v2, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;->Companion:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v4, "_id in ("

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, ")"

    .line 46
    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast p1, Ljava/util/Collection;

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    new-array v3, v3, [Ljava/lang/String;

    .line 58
    .line 59
    invoke-interface {p1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, [Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v1, v2, v0, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 2
    .line 3
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget p3, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, p3, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 7
    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget p3, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 11
    .line 12
    if-ne p1, p3, :cond_2

    .line 13
    .line 14
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 p3, 0x1d

    .line 17
    .line 18
    if-lt p1, p3, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->Wwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return v0

    .line 28
    :cond_2
    const/4 p1, 0x0

    .line 29
    return p1
.end method
