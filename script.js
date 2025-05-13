window.addEventListener("message", function (event) {
  if (event.data.action === "show") {
    document.body.style.display = "block";
  }
});

document.getElementById("spawnBtn").addEventListener("click", () => {
  fetch(`https://${GetParentResourceName()}/spawnCar`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({})
  });
});

document.getElementById("healBtn").addEventListener("click", () => {
  fetch(`https://${GetParentResourceName()}/heal`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({})
  });
});

document.getElementById("closeBtn").addEventListener("click", () => {
  fetch(`https://${GetParentResourceName()}/closeMenu`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({})
  });
  document.body.style.display = "none";
});
