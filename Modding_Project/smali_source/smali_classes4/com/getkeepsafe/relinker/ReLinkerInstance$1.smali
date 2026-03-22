.class Lcom/getkeepsafe/relinker/ReLinkerInstance$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getkeepsafe/relinker/ReLinkerInstance;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwww:Lcom/getkeepsafe/relinker/ReLinkerInstance;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwww:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/getkeepsafe/relinker/ReLinkerInstance;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->Wwwwwwwwwwwwwwwwwwwww:Lcom/getkeepsafe/relinker/ReLinkerInstance;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->Wwwwwwwwwwwwwwwwwwwww:Lcom/getkeepsafe/relinker/ReLinkerInstance;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/getkeepsafe/relinker/ReLinkerInstance;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/getkeepsafe/relinker/ReLinkerInstance;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/getkeepsafe/relinker/ReLinker$LoadListener;->success()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/getkeepsafe/relinker/MissingLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception v0

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :goto_0
    iget-object v1, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    .line 23
    .line 24
    invoke-interface {v1, v0}, Lcom/getkeepsafe/relinker/ReLinker$LoadListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :goto_1
    iget-object v1, p0, Lcom/getkeepsafe/relinker/ReLinkerInstance$1;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    .line 29
    .line 30
    invoke-interface {v1, v0}, Lcom/getkeepsafe/relinker/ReLinker$LoadListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    :goto_2
    return-void
.end method
