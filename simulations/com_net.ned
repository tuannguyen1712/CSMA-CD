//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package csma_cd.simulations;
import csma_cd.Host;
import csma_cd.Hub;
network Network
{
    parameters: 
        double slotTime @unit(ms);
    @display("bgi=background/terrain,s;bgb=1000,1000");
    submodules:
        hub: Hub;
        host[10]: Host {
        	slotTime = parent.slotTime;
        }
    connections:
        for i=0..9 {
            host[i].port <--> hub.port[i];
        }
}