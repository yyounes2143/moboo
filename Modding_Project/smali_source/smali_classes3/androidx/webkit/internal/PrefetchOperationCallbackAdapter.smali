.class public Landroidx/webkit/internal/PrefetchOperationCallbackAdapter;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static buildInvocationHandler(Landroidx/webkit/OutcomeReceiverCompat;)Ljava/lang/reflect/InvocationHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/webkit/OutcomeReceiverCompat<",
            "Ljava/lang/Void;",
            "Landroidx/webkit/PrefetchException;",
            ">;)",
            "Ljava/lang/reflect/InvocationHandler;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/webkit/internal/PrefetchOperationCallbackAdapter$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/webkit/internal/PrefetchOperationCallbackAdapter$1;-><init>(Landroidx/webkit/OutcomeReceiverCompat;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
