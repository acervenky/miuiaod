.class public final synthetic Lcom/miui/aod/util/wakelock/-$$Lambda$6-9LDT9tmPwF8YBm7jtyiApupfQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/aod/util/wakelock/WakeLock;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/aod/util/wakelock/WakeLock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/util/wakelock/-$$Lambda$6-9LDT9tmPwF8YBm7jtyiApupfQ;->f$0:Lcom/miui/aod/util/wakelock/WakeLock;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/util/wakelock/-$$Lambda$6-9LDT9tmPwF8YBm7jtyiApupfQ;->f$0:Lcom/miui/aod/util/wakelock/WakeLock;

    invoke-interface {p0}, Lcom/miui/aod/util/wakelock/WakeLock;->release()V

    return-void
.end method
