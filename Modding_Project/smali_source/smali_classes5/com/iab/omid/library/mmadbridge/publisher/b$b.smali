.class Lcom/iab/omid/library/mmadbridge/publisher/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iab/omid/library/mmadbridge/publisher/b;->Wwwwwwwwwwwwwwwwwwww()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/publisher/b;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/mmadbridge/publisher/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iab/omid/library/mmadbridge/publisher/b$b;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/publisher/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/iab/omid/library/mmadbridge/publisher/b;->Wwwwwwwww(Lcom/iab/omid/library/mmadbridge/publisher/b;)Landroid/webkit/WebView;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/iab/omid/library/mmadbridge/publisher/b$b;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/webkit/WebView;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/publisher/b$b;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
