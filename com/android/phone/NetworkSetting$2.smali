.class Lcom/android/phone/NetworkSetting$2;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "className"
    .parameter "service"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    check-cast p2, Lcom/android/phone/NetworkQueryService$LocalBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/android/phone/NetworkQueryService$LocalBinder;->getService()Lcom/android/phone/INetworkQueryService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->access$502(Lcom/android/phone/NetworkSetting;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;

    .line 324
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->access$1300(Lcom/android/phone/NetworkSetting;)V

    .line 325
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "className"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$2;->this$0:Lcom/android/phone/NetworkSetting;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->access$502(Lcom/android/phone/NetworkSetting;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;

    .line 331
    return-void
.end method